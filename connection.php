<?php
$serverName = "SOME-PC";
$database = "SANCTUARY";
$uid = "";
$password = "";

$connection = [
    "Database" => $database,
    "Uid" => $uid,
    "PWD" => $password
];
$conn = sqlsrv_connect($serverName,$connection);

if(!$conn)
    die(print_r(sqlsrv_errors(),true));

echo("connection established").'<br/>';

$tsql = "select * from ANIMAL";
$stmnt = sqlsrv_query($conn,$tsql);

if($stmnt == false)
{
    echo 'Error';
}

while($obj = sqlsrv_fetch_array($stmnt,SQLSRV_FETCH_ASSOC))
{
    echo $obj['animalName'].'<br/>';
}

sqlsrv_free_stmt($stmnt);
sqlsrv_close($conn);
?>



