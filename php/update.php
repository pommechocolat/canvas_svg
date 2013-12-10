<?php
  $nbEntree = 0;
  #foreach($_REQUEST as $key => $value) {
  #  $arr[$key]= $value;
  #  $nbEntree++;
  #}
  $decodeRecord = json_decode(stripslashes($_REQUEST['records']), true);
  $arr['decode']=$decodeRecord;

  mysql_connect("localhost", "dn_un_web", "bCmphpjYh7SHtSfV") or die("Could not connect: " . mysql_error());
  mysql_select_db("dn_un_web");
  mysql_query("SET NAMES utf8");
  $update = "update sites_Excel set realisation='".$decodeRecord['realisation']."', Aspect_UL='".$decodeRecord['Aspect_UL']."', Statut='".$decodeRecord['Statut']."', Commentaire='".$decodeRecord['Commentaire']."' where id_site='".$decodeRecord['id_site']."';";
  mysql_query($update);

  $arr['update']=$update;

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