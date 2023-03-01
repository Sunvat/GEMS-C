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

    function getFilteredAcc($Reg = 0, $filter){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        //Return accommodations regardless of region
        if ($Reg <= 0){
            $result = mysqli_query($con,"SELECT accID, aname, address, image, isFull, maxCap-curOc AS openSpace FROM accommodations;");
        }
        //Return specified region
        else{
            $SQL_Query = "SELECT accID, aname, address, image, isFull, maxCap-curOc AS openSpace FROM accommodations WHERE
            rID='$Reg'";

            if (strtolower($filter[0])=="true")
                $SQL_Query .=  " AND WCA=true";
            if (strtolower($filter[1])=="true")
                $SQL_Query .=  " AND Pets=true";
            if (strtolower($filter[2])=="true")
                $SQL_Query .=  " AND Med=true";
            if (strtolower($filter[3])=="true")
                $SQL_Query .=  " AND Bed=true";
            if (strtolower($filter[4])=="true")
                $SQL_Query .=  " AND HighGround=true";
            if (strtolower($filter[5])=="true")
                $SQL_Query .=  " AND Food=true";
            if (strtolower($filter[6])=="true")
                $SQL_Query .=  " AND Water=true";
            if (strtolower($filter[7])=="false")
                $SQL_Query .=  " AND isFull=false";
                
            $result = mysqli_query($con,$SQL_Query);
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
        // sql query to get LEI.
        $result = mysqli_query($con,"SELECT location, lei, datetime FROM LEI WHERE location = ".$LEI[2]);

        mysqli_close($con);

        $row = mysqli_fetch_array($result);

        return $row;
    }
    
     //Function for getting Contact info.
     function getContact(){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get contact names.
        $result = mysqli_query($con,"SELECT rid, pnumber, FROM Contact");

        mysqli_close($con);

        $row = mysqli_fetch_array($result);

        return $row;
    }