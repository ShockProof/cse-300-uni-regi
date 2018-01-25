<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_uni_regi" ;

$ajax = json_decode( $_REQUEST['phpCall'] );

$q = '"';

$qry_string = "SELECT * FROM student WHERE email={$q}{$ajax->email}{$q} AND pass={$q}{$ajax->pass}{$q}";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);

//echo "{$_REQUEST['phpCall']}";
//echo $qry_string;
foreach( $qry as $key => $value ) {
    echo "{";
    echo "{$q}id{$q}:{$value['id']},";
    echo "{$q}name{$q}:{$q}{$value['name']}{$q},";
    echo "{$q}email{$q}:{$q}{$value['email']}{$q},";
    echo "{$q}sscBatch{$q}:{$value['ssc_batch']},";
    echo "{$q}sscResult{$q}:{$value['ssc_result']},";
    echo "{$q}hscBatch{$q}:{$value['hsc_batch']},";
    echo "{$q}hscResult{$q}:{$value['hsc_result']},";
    echo "{$q}batch{$q}:{$value['batch']}";
    echo "}";
    return;
}
echo "{";
echo "{$q}id{$q}:0";
echo "}";

?>