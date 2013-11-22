<?php
class QueryDatabase {
  private $_db;
  protected $_result;
  public $result;

  public function __construct() {
    $_db = new mysqli('host', 'username', 'password', 'database');
    if ($_db->connect_error) {
      die('Connection Error ('.$_db-connect_errno.') '.$_db->connect_error);
    }
    return $_db;
  }
  
  publuc function __destruct() {
    //$_db = $this->__construct();
    $_db->close();
    return $this;
  }
  
  public function getResults($params) {
    $_db = this->openConnection();
    $_result = $_db->query("") or die ('Connect Error ('.$_db-connect_errno.') '.$_db->connect_error);
    $results = array();
    while($row = $_result->fetch_assoc()) {
      array_push($results, $row);
    }
    $this->closeConnection($_db);
    return $results;
  }
  
  public function updateRecords(stdClass $params) {
    $_db = $this->__construct();
    if ($stmt = $_db->prepare("UPDATE owners SET name=?, address=?, state=? WHERE id=?")) {
      $stmt->bind_param('sssd', $name, $address, $state, $id);
      $name = $params->name;
      $address = $params->address;
      $state = $params->state;
      //cast id to int
      $id = (int) $params->id;
      $stmt->execute();
      $stmt->close();
    }
    return $this;
  }
}
>