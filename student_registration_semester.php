<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_uni_regi" ;

$q = '"';

$qry_string = "SELECT * FROM semester_list WHERE is_running=1";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);

foreach( $qry as $key => $value ) {
    echo "{";
    echo "{$q}status{$q}:{$q}semester running{$q},";
    echo "{$q}id{$q}:{$value['id']},";
    echo "{$q}name{$q}:{$q}{$value['name']}{$q}";
    echo "}";
    return;
}
echo "{";
echo "{$q}status{$q}:{$q}no{$q}";
echo "}";

?>