<?php
//Get the details of one accommodation
require_once("getConnection.php");
    function updateAccDet($accommodation){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        $result = mysqli_query($con,"UPDATE accommodations SET 
        aname = '$accommodation[0]', address = '$accommodation[1]',
        maxCap = $accommodation[2], curOc = curOc + $accommodation[3], descr = '$accommodation[4]', image = '$accommodation[5]',
        WCA = $accommodation[6], Pets = $accommodation[7], Med = $accommodation[8], Bed = $accommodation[9],
        HighGround = $accommodation[10], Food = $accommodation[11], Water = $accommodation[12]
        WHERE accID=$accommodation[13]");

        mysqli_close($con);

        return $result;
    }

    function updateRegion(){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        mysqli_close($con);
    }

    //function for getting LEI Information.
    function updateLEI($LEI){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        // get query
        $result = mysqli_query($con,"UPDATE LEI SET 
        location = '$LEI[0]',
        LEI = '$LEI[1]',
        datetime = '$LEI[2]'
    
        WHERE location = '$LEI[3]'");
        //close connection
        mysqli_close($con);
        // return query
        return $result;
    }