<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_uni_regi" ;

function getCourseID( $code )
{
	$q = '"';
	$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
	$qry = $Connection->query("SELECT id FROM course WHERE short_name={$q}{$code}{$q}");
	foreach( $qry as $key => $value ) {
		return $value['id'];
	}
	return 0;
}

$ajax = json_decode( $_REQUEST['phpCall'] );

$q = '"';

$id = getCourseID( $ajax->courseCode );

$qry_string = "SELECT course.semester , course.name , course.short_name , course.credit FROM prerequisite_course JOIN course ON prerequisite_course.prerequisite=course.id WHERE prerequisite_course.course_id = {$id}";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);

//echo "{$_REQUEST['phpCall']}";
//echo $qry_string;
echo "[";
foreach( $qry as $key => $value ) {
	if( $key > 0 ) echo ",";
	echo "[";
	echo "{$q}{$value['semester']}{$q},";
	echo "{$q}{$value['name']}{$q},";
	echo "{$q}{$value['short_name']}{$q},";
	echo "{$q}{$value['credit']}{$q}";
    echo "]";
}
echo "]";

?>