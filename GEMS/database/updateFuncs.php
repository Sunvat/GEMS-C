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
        aname = '$accommodation[0]', address = '$accommodation[1]', rname = '$accommodation[2]', country = '$accommodation[3]',
        maxCap = $accommodation[4], curOc = curOc + $accommodation[5], descr = '$accommodation[6]', image = '$accommodation[7]',
        WCA = $accommodation[8], Pets = $accommodation[9], Med = $accommodation[10], Bed = $accommodation[11],
        HighGround = $accommodation[12], Food = $accommodation[13], Water = $accommodation[14]
        WHERE accID=$accommodation[15]");

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