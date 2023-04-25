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
            $result = mysqli_query($con,"SELECT accID, aname, address, image, isFull, maxCap-curOc AS openSpace FROM accommodations ORDER BY aname;");
        }
        //Return test accommodation
        else if ($Reg == -1){
            $result = mysqli_query($con,"SELECT accID, aname, address, image, maxCap-curOc AS openSpace FROM accommodations WHERE aname='Hotel California' AND address = 'Dark Desert Highway';");
        }
        //Return specified region
        else{
            $result = mysqli_query($con,"SELECT accID, aname, address, image, isFull, maxCap-curOc AS openSpace FROM accommodations WHERE rID='$Reg' ORDER BY aname;");
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
            $result = mysqli_query($con,"SELECT accID, aname, address, image, isFull, maxCap-curOc AS openSpace FROM accommodations ORDER BY aname;");
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
            //Some calls of this function do not use the below, this try catch will handle that case
            try{
                if (strtolower($filter[4])=="true")
                    $SQL_Query .=  " AND HighGround=true";
                if (strtolower($filter[5])=="true")
                    $SQL_Query .=  " AND Food=true";
                if (strtolower($filter[6])=="true")
                    $SQL_Query .=  " AND Water=true";
                if (strtolower($filter[7])=="false")
                    $SQL_Query .=  " AND isFull=false";
            }catch(Exception $e){}
                
            $SQL_Query .= " ORDER BY aname";
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
        $result = mysqli_query($con,"SELECT rname FROM regions ORDER BY rname");

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
        // sql query to get booking entries.
        $result = mysqli_query($con,"SELECT * FROM bookings ORDER BY bookingID ASC");

        mysqli_close($con);

        return $result;
    }

    function getAllWish($rID = 0){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get wishlist entries.
        // rID = 0 is the default to return all rows regardless of region
        if ($rID == 0){
            $result = mysqli_query($con,"SELECT * FROM wishlist INNER JOIN regions ON wishlist.rID = regions.rID ORDER BY wishID ASC");
        }
        else{
            $result = mysqli_query($con,"SELECT * FROM wishlist INNER JOIN regions ON wishlist.rID = regions.rID WHERE wishlist.rID = $rID ORDER BY wishID ASC");
        }

        mysqli_close($con);

        return $result;
    }
    
    function getWish($wID){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get a wishlist entry.
        $result = mysqli_query($con,"SELECT * FROM wishlist WHERE wishID = $wID");
        $row = mysqli_fetch_array($result);

        mysqli_close($con);

        return $row;
    }

    function getPendingBookings($rID = 0){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        // rID = 0 is the default to return all rows regardless of region
        if ($rID == 0){
            $result = mysqli_query($con,"SELECT * FROM bookings INNER JOIN accommodations ON bookings.accID = accommodations.accID INNER JOIN regions ON bookings.rID = regions.rID WHERE bookings.status = 'PENDING' ORDER BY bookingID ASC");
        }
        else{
            $result = mysqli_query($con,"SELECT * FROM bookings INNER JOIN accommodations ON bookings.accID = accommodations.accID INNER JOIN regions ON bookings.rID = regions.rID WHERE bookings.status = 'PENDING' AND bookings.rID = $rID ORDER BY bookingID ASC");
        }

        mysqli_close($con);

        return $result;
    }

    function getConfirmedBookings($rID = 0){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // rID = 0 is the default to return all rows regardless of region
        if ($rID == 0){
            $result = mysqli_query($con,"SELECT * FROM bookings INNER JOIN accommodations ON bookings.accID = accommodations.accID INNER JOIN regions ON bookings.rID = regions.rID WHERE bookings.status = 'CONFIRMED' ORDER BY bookingID ASC");
        }
        else{
            $result = mysqli_query($con,"SELECT * FROM bookings INNER JOIN accommodations ON bookings.accID = accommodations.accID INNER JOIN regions ON bookings.rID = regions.rID WHERE bookings.status = 'CONFIRMED' AND bookings.rID = $rID ORDER BY bookingID ASC");
        }
        mysqli_close($con);

        return $result;
    }

    function getDeclinedBookings($rID = 0){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get declined booking requests.
        // rID = 0 is the default to return all rows regardless of region
        if ($rID == 0){
            $result = mysqli_query($con,"SELECT * FROM bookings INNER JOIN accommodations ON bookings.accID = accommodations.accID INNER JOIN regions ON bookings.rID = regions.rID WHERE bookings.status = 'DENIED' ORDER BY bookingID ASC");
        }
        else{
            $result = mysqli_query($con,"SELECT * FROM bookings INNER JOIN accommodations ON bookings.accID = accommodations.accID INNER JOIN regions ON bookings.rID = regions.rID WHERE bookings.status = 'DENIED' AND bookings.rID = $rID ORDER BY bookingID ASC");
        }
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
        $result = mysqli_query($con,"SELECT rID, rname FROM regions ORDER BY rname");

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
        $result = mysqli_query($con,"SELECT rID, location, lei, datetime FROM LEI ORDER BY datetime DESC");

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
        $result = mysqli_query($con,"SELECT rID, PNumber FROM contact");

        mysqli_close($con);

        $row = $result;

        return $row;
    }

    // Function used to get Region ID based on inputs
    function getRegionID($rname, $country, $provstate){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get region names.
        $result = mysqli_query($con,"SELECT rID FROM regions WHERE rname = '$rname' AND country = '$country' AND provstate = '$provstate'");

        mysqli_close($con);
        
        $id = mysqli_fetch_array($result);
        return $id;
    }

    function getRegionbyID($rID){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // sql query to get region names.
        $result = mysqli_query($con,"SELECT rname FROM regions WHERE rID = '$rID'");

        mysqli_close($con);

        return $result;
    }