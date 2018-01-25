<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_uni_regi" ;

$ajax = json_decode( $_REQUEST['phpCall'] );

function replace_semester( $par ) {
	if( $par == 1 ) return "1-1";
	if( $par == 2 ) return "1-2";
	if( $par == 3 ) return "2-1";
	if( $par == 4 ) return "2-2";
	if( $par == 5 ) return "3-1";
	if( $par == 6 ) return "3-2";
	if( $par == 7 ) return "4-1";
	return "4-2";
}

$q = '"';

$qry_string = "SELECT course.semester , course.name as course_name , course.short_name as course_code , course.credit , completed_course.result FROM completed_course JOIN course ON completed_course.course_id = course.id WHERE completed_course.student_id = {$ajax->studentID}";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);

// very long query :p
// check this with link like .../student_semester_report.php?phpCall={"studentID":13101062}
//echo "{$_REQUEST['phpCall']}";
//echo $qry_string;
echo "[";
foreach( $qry as $key => $value ) {
	if( $key > 0 ) echo ",";
	echo "[";
	
	$temp = replace_semester($value['semester']);
	echo "{$q}{$temp}{$q},";

	echo "{$q}{$value['course_name']}{$q},";
	echo "{$q}{$value['course_code']}{$q},";
	echo "{$q}{$value['credit']}{$q},";
	echo "{$q}{$value['result']}{$q}";
    echo "]";
}
echo "]";

?>