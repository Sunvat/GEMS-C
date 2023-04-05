<?php
require_once("getConnection.php");
    function insertAcc($newAccommodation){
        $conn = getConn();

        //Insert data from newAccomodation into the database
        $sql = "INSERT INTO accommodations (aname, address, rID, maxCap, curOc, descr, image, wca, pets, med, bed, highground, food, water)
        VALUES ('$newAccommodation[0]', '$newAccommodation[1]', '$newAccommodation[2]',
         $newAccommodation[3], 0, '$newAccommodation[4]', '$newAccommodation[5]', $newAccommodation[6],
         $newAccommodation[7], $newAccommodation[8], $newAccommodation[9], $newAccommodation[10],
         $newAccommodation[11], $newAccommodation[12])";

        //Check if the insert was successful
        if ($conn->query($sql) === FALSE) {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
            
        mysqli_close($conn);
    }

    function insertTestAcc(){
        $conn = getConn();
        $result = true;

        //Insert data from newAccomodation into the database
        $sql = "INSERT INTO accommodations (aname, rname, country, address, maxCap)
        VALUES ('Hotel California', 'California', 'USA',
         'Dark Desert Highway', 40)";

        //Check if the insert was successful
        if ($conn->query($sql) === FALSE) {
            echo "Error: " . $sql . "<br>" . $conn->error;
            $result = false;
        }
            
        mysqli_close($conn);
        return $result;
    }

    //Insert function for Regions
    function InsertRegion($newRegion){
        //get connecttion
        $conn = getConn();
        //sql query inserting into region table
        $sql = "INSERT INTO regions(rname, country, provState, image)
        Values ('$newRegion[0]', '$newRegion[1]', '$newRegion[2]', NULL)";
        //check if insert worked
        if ($conn->query($sql) === FALSE) {
        echo "Error: " . $sql . "<br>" . $conn->error;
        }
        //close connection
        mysqli_close($conn);
    }

    function InsertBooking($newBooking){
        //get connecttion
        $conn = getConn();
        //sql query inserting into region table
        $sql = "INSERT INTO bookings(accID, rID, bookerName, bookerDepartment, bookerID, bookerPhoneNumber, NumPeople, evacPrimaryName, evacPhoneNumber)
        Values ('$newBooking[0]', '$newBooking[1]', '$newBooking[2]', '$newBooking[3]', '$newBooking[4]', '$newBooking[5]', '$newBooking[6]', '$newBooking[7]', '$newBooking[8]')";
        //check if insert worked
        if ($conn->query($sql) === FALSE) {
        echo "Error: " . $sql . "<br>" . $conn->error;
        }
        //close connection
        mysqli_close($conn);
    }

    function InsertWishlist($newBooking){
        //get connecttion
        $conn = getConn();
        //sql query inserting into region table
        $date = date('Y-m-d H:i:s', time());
        $sql = "INSERT INTO wishlist(rID, bookerName, bookerDepartment, bookerID, bookerPhoneNumber, NumPeople, evacPrimaryName, evacPhoneNumber, WCA, Pets, Med, Bed, DateTime)
        Values ('$newBooking[0]', '$newBooking[1]', '$newBooking[2]', '$newBooking[3]', '$newBooking[4]', '$newBooking[5]', '$newBooking[6]', '$newBooking[7]', $newBooking[8], $newBooking[9], $newBooking[10], $newBooking[11], '$date')";
        //check if insert worked
        if ($conn->query($sql) === FALSE) {
        echo "Error: " . $sql . "<br>" . $conn->error;
        }
        //close connection
        mysqli_close($conn);
    }

    function InsertAccountInfo($newAccount){
        // get connection
        $conn = getConn();
        // sql query inserting account info into the user acounts table
        $hashpass=md5($newAccount[3]  );
        $sql = "INSERT INTO useraccounts(fname, lname, email, pword, id, rID, admin)
        Values ('$newAccount[0]', '$newAccount[1]', '$newAccount[2]', '$hashpass', '$newAccount[4]', '$newAccount[5]','$newAccount[6]' )";
        //check if the query worked
        if($conn->query($sql) === FALSE){
            echo "Error:" . $sql . "<br>" . $conn->error;
        }
        mysqli_close($conn);
    }

    //insert function for Latest emergency information
    function InsertLEI($LEI){
        // get connection
        $conn = getConn();
        // sql query inserting account info into the LEI table
        $sql = "INSERT INTO LEI(rID, location, LEI, DateTime)
        Values ('$LEI[0]', '$LEI[1]', '$LEI[2]', '$LEI[3]')";
        //check if the query worked
        if($conn->query($sql) === FALSE){
            echo "Error:" . $sql . "<br>" . $conn->error;
        }
        mysqli_close($conn);
    }

     //insert function for Contact
     function InsertContact($rID, $pNumber){
        // get connection
        $conn = getConn();
        // sql query inserting Contact Information into table
        $sql = "INSERT INTO Contact(rID, pnumber)
        Values ('$rID[0]', '$pNumber')";
        //check if the query worked
        if($conn->query($sql) === FALSE){
            echo "Error:" . $sql . "<br>" . $conn->error;
        }
        mysqli_close($conn);
    }