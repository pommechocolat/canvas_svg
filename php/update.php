<?php
  $nbEntree = 0;
  foreach($_REQUEST as $key => $value) {
    $arr[$key]= $value;
    $nbEntree++;
  }
  $decodeRecord = json_decode(stripslashes($_REQUEST['records']));
  $arr['decode']=$decodeRecord;
  send($arr, $nbEntree);

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