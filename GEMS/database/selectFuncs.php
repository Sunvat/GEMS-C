<?php
//Get the details of one accommodation
require 'getConnection.php';
    function getAccDet($ID){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        $result = mysqli_query($con,"SELECT *, maxCap-curOc AS openSpace FROM accommodations WHERE accID=" . $ID);

        mysqli_close($con);

        return $result;
    }

    function getAllAcc($Reg = 'all'){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        //Return accommodations regardless of region
        if (strcmp( $Reg, 'all' ) == 0){
            $result = mysqli_query($con,"SELECT accID, aname, address, maxCap-curOc AS openSpace FROM accommodations;");
        }
        //Return accommodations regardless of region
        else if (strcmp( $Reg, 'TESTING' ) == 0){
            $result = mysqli_query($con,"SELECT accID, aname, address, maxCap-curOc AS openSpace FROM testAccommodations;");
        }
        //Return specified region
        else{
            $result = mysqli_query($con,"SELECT accID, aname, address, maxCap-curOc AS openSpace FROM accommodations WHERE rname='$Reg';");
        }
        
        mysqli_close($con);

        return $result;
    }

    function getRegion(){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get region names.
        $result = mysqli_query($con,"SELECT rname FROM regions ");

        mysqli_close($con);

        return $result;
    }

    function getRegionAndID(){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get region names.
        $result = mysqli_query($con,"SELECT rID, rname FROM regions ");

        mysqli_close($con);

        return $result;
    }