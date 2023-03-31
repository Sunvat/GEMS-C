<?php
//Get the details of one accommodation
require_once("selectFuncs.php");
require_once("deleteFuncs.php");
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

    function confirmDenyBooking($answer = 0, $bID){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        //If the booking is confirmed
        if ($answer == 1){
            mysqli_begin_transaction($con);
            try{
                mysqli_query($con,"UPDATE bookings SET status = 'CONFIRMED' WHERE bookingID = $bID;");
                $result = mysqli_query($con,"SELECT NumPeople, accID FROM bookings WHERE bookingID = $bID;");
                $row = mysqli_fetch_array($result);
                $result = mysqli_query($con,"UPDATE accommodations SET curOc = curOc+". $row["NumPeople"] ." WHERE accID = ". $row["accID"] .";");
                mysqli_commit($con);
            } catch (mysqli_sql_exception $exception) {
                mysqli_rollback($con);
                $result = $exception;
            }
            
        }
        else{
            $result = mysqli_query($con,"UPDATE bookings SET status = 'DENIED' WHERE bookingID = $bID;");
        }

        mysqli_close($con);

        return $result;
    }

    function endStay($accID, $bID){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        mysqli_begin_transaction($con);
        try{
            mysqli_query($con,"UPDATE bookings SET status = 'RESOLVED' WHERE bookingID = $bID;");
            $result = mysqli_query($con,"SELECT NumPeople FROM bookings WHERE bookingID = $bID;");
            $row = mysqli_fetch_array($result);
            $result = mysqli_query($con,"UPDATE accommodations SET curOc = curOc-". $row["NumPeople"] ." WHERE accID = ". $accID .";");
            mysqli_commit($con);
        } catch (mysqli_sql_exception $exception) {
            mysqli_rollback($con);
            log($exception);
            $result = $exception;
        }

        mysqli_close($con);

        return $result;
    }

    function confirmWish($wish){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        
        mysqli_begin_transaction($con);

        try{
            $row = getWish($wish[0]);
            $sql = "INSERT INTO bookings(accID, rID, bookerName, bookerDepartment, bookerID, bookerPhoneNumber, NumPeople, evacPrimaryName, evacPhoneNumber, status)
            Values ('$wish[1]', '".$row['rID']."', '".$row['bookerName']."', '".$row['bookerDepartment']."', '".$row['bookerID']."', '".$row['bookerPhoneNumber']."', '".$row['NumPeople']."', '".$row['evacPrimaryName']."', '".$row['evacPhoneNumber']."', 'CONFIRMED')";
            mysqli_query($con,$sql);
            $result = mysqli_query($con,"UPDATE accommodations SET curOc = curOc+". $row["NumPeople"] ." WHERE accID = ". $wish[1] .";");
            delWish($wish[0]);
            mysqli_commit($con);
        } catch (mysqli_sql_exception $exception) {
            mysqli_rollback($con);
            error_log($exception);
            $result = $exception;
        }

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