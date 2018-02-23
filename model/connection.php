<?php


function connection()
{
    $server = "localhost";
    $user = "medSaid";
    $password = "";
    $db = "archiveuna";
    
    $connection = new mysqli($server,$user,$password,$db);

    if($connection->connect_error)
    {
        exit("Error : " . connect_error);
    }
    else
    {
       // echo "db ready to use \n";
    }
    
    return $connection;
}

connection();