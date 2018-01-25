<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_uni_regi" ;

$ajax = json_decode( $_REQUEST['phpCall'] );

$q = '"';

$qry_string = "SELECT semester_list.name AS semester_name , course.name AS course_name , course.short_name course_code , course.credit , semester_result.result FROM semester_result JOIN semester_list ON semester_result.semester_id=semester_list.id JOIN course ON semester_result.course_id = course.id WHERE student_id={$ajax->studentID}";
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
	echo "{$q}{$value['semester_name']}{$q},";
	echo "{$q}{$value['course_name']}{$q},";
	echo "{$q}{$value['course_code']}{$q},";
	echo "{$q}{$value['credit']}{$q},";
	echo "{$q}{$value['result']}{$q}";
    echo "]";
}
echo "]";

?>