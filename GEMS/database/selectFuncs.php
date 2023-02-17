<?php
//Get the details of one accommodation
require_once("getConnection.php");
    function getAccDet($ID){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        $result = mysqli_query($con,"SELECT *, maxCap-curOc AS openSpace FROM accommodations WHERE accID=" . $ID);

        mysqli_close($con);

        $row = mysqli_fetch_array($result);

        return $row;
    }

    function getAllAcc($Reg = 0){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        //Return accommodations regardless of region
        if ($Reg == 0){
            $result = mysqli_query($con,"SELECT accID, aname, address, image, isFull, maxCap-curOc AS openSpace FROM accommodations;");
        }
        //Return test accommodation
        else if ($Reg == -1){
            $result = mysqli_query($con,"SELECT accID, aname, address, image, maxCap-curOc AS openSpace FROM accommodations WHERE aname='Hotel California' AND address = 'Dark Desert Highway';");
        }
        //Return specified region
        else{
            $result = mysqli_query($con,"SELECT accID, aname, address, image, isFull, maxCap-curOc AS openSpace FROM accommodations WHERE rID='$Reg';");
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

    function getAllBookings(){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get region names.
        $result = mysqli_query($con,"SELECT * FROM bookings ");

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
    
    //Function for getting LEI and will be used for sorting.
    function getLEIandID(){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get region names.
        $result = mysqli_query($con,"SELECT rID, location, lei, datetime FROM LEI ");

        mysqli_close($con);

        return $result;
    }

    //Function for getting LEI info.
    function getRowLEI($LEI){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get region names.
        $result = mysqli_query($con,"SELECT location, lei, datetime FROM LEI WHERE location = ".$LEI[2]);

        mysqli_close($con);

        $row = mysqli_fetch_array($result);

        return $row;
    }
    // temp function
    function getRowLEI(){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get region names.
        $result = mysqli_query($con,"SELECT location, lei, datetime FROM LEI");

        mysqli_close($con);

        $row = mysqli_fetch_array($result);

        return $row;
    }