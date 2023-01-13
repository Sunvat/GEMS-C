<?php
//Get general details of all accommodations in a region
require 'getConnection.php';
    function getAllAcc($Reg = 'all'){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        //Return accommodations regardless of region
        if (strcmp( $Reg, 'all' )){
            $result = mysqli_query($con,"SELECT accID, aname, address, maxCap-curOc AS openSpace FROM accommodations;");
        }
        //Return specified region
        else{
            $result = mysqli_query($con,"SELECT accID, aname, address, maxCap-curOc AS openSpace FROM accommodations WHERE rname='$Reg';");
        }
        
        mysqli_close($con);

        return $result;
    }