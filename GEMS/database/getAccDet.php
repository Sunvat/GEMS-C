<?php
//Get the details of one accommodation
    function getAccDet($ID){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        return mysqli_query($con,"SELECT *, maxCap-curOc AS openSpace FROM accommodations WHERE accID=" . $ID);
    }