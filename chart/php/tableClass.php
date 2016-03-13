<?php

class obsTable implements JsonSerializable{
	private $id;
	private $tableName;
	private $tableValues;
	private $severities;
	private $height;
	private $dataLeft;
	private $dataRight;
	private $sections;
	private $highlights;
	private $stepSize;
	private $minVal;
	private $maxVal;
	private $multiData;
	
	public function __construct($tableId, $name = "", $values = array(), $tableSeverities=array(), $tableHeight = 0, $tableDataLeft = array(), $tableDataRight = array(), $tableSections = array(), $tableHighlights=array(), $tableStepSize = 0, $tableMinVal = 0, $tableMaxVal = 0, $tableMultiData = false){
        $this->id = $tableId;
        $this->setTableName($name);
        $this->setValues($values);
		$this->setSeverities($tableSeverities);
		$this->setTableHeight($tableHeight);
		$this->setDataLeft($tableDataLeft);
		$this->setDataRight($tableDataRight);
		$this->setSections($tableSections);
		$this->setHighlights($tableHighlights);
		$this->setStepSize($tableStepSize);
		$this->setMinVal($tableMinVal);
		$this->setMaxVal($tableMaxVal);
		$this->getMultiData($tableMultiData);
    }
	
    //setters
    public function setTableName($value){
    	$this->tableName = $value;
    }
    
    public function setValues($value){
    	$this->tableValues = $value;
    }
    
	public function setSeverities($value){
    	$this->severities = $value;
    }
	
	public function setTableHeight($value){
    	$this->height = $value;
    }
    
    public function setDataLeft($value){
    	$this->dataLeft = $value;
    }
    
    public function setDataRight($value){
    	$this->dataRight = $value;
    }
    
    public function setData($leftValues, $rightValues){
    	setDataLeft($leftValues);
    	setDataRight($rightValues);
    }
    
    public function setSections($value){
    	$this->sections = $value;
    }
    
    public function setHighlights($value){
    	$this->highlights = $value;
    }
    
    public function setStepSize($value){
    	$this->stepSize = $value;
    }
    
    public function setMinVal($value){
    	$this->minVal = $value;
    }
    
    public function setMaxVal($value){
    	$this->maxVal = $value;
    }
    
    public function setMultiData($value){
    	$this->multiData = $value;
    }
    
    //getters
    public function getTableId(){
    	return $this->id;
    }
    
    public function getTableName(){
    	return $this->tableName;
    }
    
    public function getValues(){
    	return $this->tableValues;
    }
    
	public function getSeverities(){
    	return $this->severities;
    }
	
	public function getTableHeight(){
    	return $this->height;
    }
    
    public function getDataLeft(){
    	return $this->dataLeft;
    }
    
    public function getDataRight(){
    	return $this->dataRight;
    }
    
    public function getData(){
    	return array('dataLeft' => getDataLeft(),'dataRight' => getDataRight());
    }
    
    public function getSections(){
    	return $this->sections;
    }
    
    public function getHighlights(){
    	return $this->highlights;
    }
    
    public function getStepSize(){
    	return $this->stepSize;
    }
    
    public function getMinVal(){
    	return $this->minVal;
    }
    
    public function getMaxVal(){
    	return $this->maxVal;
    }
    
    public function getMultiData(){
    	return $this->multiData;
    }
    
    public function jsonSerialize() {
        return get_object_vars($this);
    }
}




?>