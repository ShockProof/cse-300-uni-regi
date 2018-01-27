<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_uni_regi" ;

///$ajax = json_decode( $_REQUEST['phpCall'] );



$qry_string = "SELECT * FROM semester_result";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);

$id = 1;
foreach( $qry as $key => $value ) {
    if( !($value['result'] < 40) ) {
        echo "INSERT INTO completed_course VALUES( {$id} , {$value['student_id']} , {$value['course_id']} , {$value['result']} ) ;";
        echo "<br>";
        $id++;
    }
}

?>