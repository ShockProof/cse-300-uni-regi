<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_uni_regi" ;

$ajax = json_decode( $_REQUEST['phpCall'] );


$qry_string = "SELECT course_id FROM completed_course WHERE student_id = {$ajax->studentID}";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);

$completed = [];
$i = 0;
foreach( $qry as $key => $value ) {
    $completed[$i++] = $value['course_id'];
}


$q = '"';
$qry_string = "SELECT prerequisite FROM prerequisite_course WHERE course_id=(SELECT id FROM course WHERE short_name={$q}{$ajax->courseShortName}{$q})";
$qry = $Connection->query($qry_string);

foreach( $qry as $key => $value ) {
    if( !in_array( $value['prerequisite'] , $completed ) ) {
        echo "{$q}prerequisite missed{$q}";
        return;
    }
}

echo "{$q}okay{$q}";
$qry_string = "INSERT INTO semester_registration(course_id,student_id,semester_id) VALUES( (SELECT id FROM course WHERE short_name={$q}{$ajax->courseShortName}{$q}),{$ajax->studentID},{$ajax->semesterID})";
$qry = $Connection->query($qry_string);
///echo "{$q}{$qry_string}{$q}";

?>