<?php
//Get general details of all accommodations
require 'getConnection.php';
    function getAllAcc($Reg){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        $result = mysqli_query($con,"SELECT accID, aname, address, maxCap-curOc AS openSpace FROM accommodations WHERE rname='" . $Reg . "';");
        
        mysqli_close($con);

        return $result;
    }