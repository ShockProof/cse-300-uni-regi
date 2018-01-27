<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_uni_regi" ;

///$ajax = json_decode( $_REQUEST['phpCall'] );

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_uni_regi" ;

$ajax = json_decode( $_REQUEST['phpCall'] );

$q = '"';

$qry_string = "DELETE FROM semester_registration WHERE student_id = {$ajax->studentID} AND course_id = ( SELECT id FROM course WHERE short_name = {$q}{$ajax->courseShortName}{$q})";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);

echo "{$qry_string}";
?>