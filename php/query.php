<?
  mysql_connect("localhost", "dn_un_web", "bCmphpjYh7SHtSfV") or die("Could not connect: " . mysql_error());
  mysql_select_db("dn_un_web");
  mysql_query("SET NAMES utf8");
  $query=stripslashes($_REQUEST['query']);
  $result = mysql_query($query);
  $nbrows = mysql_num_rows($result);	
  if($nbrows>0){
    while($rec = mysql_fetch_array($result)){
      $arr[] = $rec;
    }
  }
  send($arr, $nbrows);
  
  function send($output, $nbrows) {
    $callback = $_REQUEST['callback'];
    $json = '""';
    if($nbrows>0) {
      $json = json_encode($output);
    }
    if ($callback) {
        header('Content-Type: text/javascript');
        echo $callback . '(' .'{"total":"'.$nbrows.'","results":'. $json .'}' . ');';
    } else {
        header('Content-Type: application/x-json');
        echo '{"total":"'.$nbrows.'","results":'. $json .'}';
    }
  }

?>
