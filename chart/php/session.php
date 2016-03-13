<?php
//include 'database.php';

class Session {                                      
 
  private $db;
  public $id;
  
  /**
   * Constructor
   */
  public function __construct($sessionId = false){
	  // Instantiate new Database object
	  $this->db = new Database;
          
	  // Set handler to overide SESSION
	  session_set_save_handler(
		array($this, "_open"),
		array($this, "_close"),
		array($this, "_read"),
		array($this, "_write"),
		array($this, "_destroy"),
		array($this, "_gc")
	  );

	  // Start the session
	  session_start();
	  if($sessionId != false){
	  	  $this->id = $sessionId;
	  }else{
	  	  $this->id = session_id();
	  }
	  $this->_read($this->id);
	}
	
	/**
	 * Open
	 */
	public function _open(){
	  // If successful
	  if($this->db){
	  	  
		// Return True
		return true;
	  }
	  // Return False
	  return false;
	}
	
	/**
	 * Close
	 */
	public function _close(){
	  // Close the database connection
	  // If successful
	  if($this->db->close()){
		// Return True
		return true;
	  }
	  // Return False
	  return false;
	}
	
	/**
	 * Read
	 */
	public function _read($id){
		$result;
		
		// Set query
		$this->db->query('SELECT Field05 FROM CH010 WHERE Field01 = :id AND Field02 = :ip');
		// Bind the Id
		$this->db->bind(':id', $this->id);
		$this->db->bind(':ip', $this->getClientIp());
		$data="";
		// Attempt execution
		// If successful
		if($this->db->execute()){
			// Save returned row
			$row = $this->db->single();
			// Return the data
			if(!$row){
				
				if($this->id){
					
					 $this->db->query('INSERT INTO CH010 (Field01, Field02, Field03, Field04, Field05) VALUES (:id, :ip, :opened, :access, :data)');
					
					 $this->db->bind(':id', $this->id);
					 $this->db->bind(':ip', $this->getClientIp());
					 $this->db->bind(':opened', time());
					 $this->db->bind(':access', time());
					 $this->db->bind(':data', json_encode($data,JSON_FORCE_OBJECT));

					 $this->db->execute();
				}
				$result = $data;
			}else{
				$result = json_decode($row['Field05']);
				if(count($result) < 1){
					$result = array();
				}
				
			}
		}else{
			$result = "ERROR 001";
		}
		return $result;
	}
	
	/**
	 * Write
	 */
	public function _write($id, $data){
		
		//echo 'write';
	  // Create time stamp
	  $access = time();
		// echo 'data= '.$data;
	  // Set query
	  $this->db->query('UPDATE CH010 SET Field04=:access, Field05=:data WHERE Field01=:id AND Field02 = :ip');
		// var_dump($data);
	  // Bind data
	  $this->db->bind(':id', $this->id);
	  $this->db->bind(':ip', $this->getClientIp());
	  $this->db->bind(':access', $access);  
	  $this->db->bind(':data', json_encode($data,JSON_FORCE_OBJECT));
	 
	  // Attempt Execution
	  // If successful
	  if($data!==""){
		  if($this->db->execute()){
			// Return True
			return true;
		  }else{
			  echo "write doesn't work";
		  }
	   }
	  // Return False
	  return false;
	}
	
	public function destroyMultipleSessions(){
		// Set query
	  $this->db->query('DELETE * FROM CH010 WHERE Field02 = :ip');
		 
	  // Bind data
	  $this->db->bind(':ip', $this->getClientIp());
		 
	  // Attempt execution
	  // If successful
	  if($this->db->execute()){
		// Return True
		return true;
	  }
	 
	  // Return False
	  return false;
	}
	
	/**
	 * Destroy
	 */
	public function _destroy($id){
	  // Set query
	  $this->db->query('DELETE FROM CH010 WHERE Field01 = :id AND Field02 = :ip');
		 
	  // Bind data
	  $this->db->bind(':id', $this->id);
	  $this->db->bind(':ip', $this->getClientIp());
		 
	  // Attempt execution
	  // If successful
	  if($this->db->execute()){
		// Return True
		return true;
	  }
	 
	  // Return False
	  return false;
	}
	
	/**
	 * Garbage Collection
	 */
	public function _gc($max){
	  // Calculate what is to be deemed old
	  $old = time() - $max;
	 
	  // Set query
	  $this->db->query('DELETE * FROM CH010 WHERE Field04 < :old');
		 
	  // Bind data
	  $this->db->bind(':old', $old);
		 
	  // Attempt execution
	  if($this->db->execute()){
		// Return True
		return true;
	  }
	 
	  // Return False
	  return false;
	}
	
	/**
	* Get user ip address
	*/
	function getClientIp() {
		$ipAddress = '';
		
		if($this->validateServerArrayKey('HTTP_CLIENT_IP')){
			$ipAddress = $_SERVER['HTTP_CLIENT_IP'];
		}else if($this->validateServerArrayKey('HTTP_X_FORWARDED_FOR')){
			$ipAddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}else if($this->validateServerArrayKey('HTTP_X_FORWARDED')){
			$ipAddress = $_SERVER['HTTP_X_FORWARDED'];
		}else if($this->validateServerArrayKey('HTTP_FORWARDED_FOR')){
			$ipAddress = $_SERVER['HTTP_FORWARDED_FOR'];
		}else if($this->validateServerArrayKey('HTTP_FORWARDED')){
			$ipAddress = $_SERVER['HTTP_FORWARDED'];
		}else if($this->validateServerArrayKey('REMOTE_ADDR')){
			$ipAddress = $_SERVER['REMOTE_ADDR'];
		}else{
			$ipAddress = "ERROR 002";
		}
		
		if($ipAddress =="::1"){
			$ipAddress = "127.0.0.1";
		}
	 
		return ip2long($ipAddress);
	}
	
	function validateServerArrayKey($key){
		$result = false;
		if(array_key_exists($key, $_SERVER)){
			if ($_SERVER[$key]){
				$result = true;
			}
		}
		return $result;
	}
	
	
		

}






?>