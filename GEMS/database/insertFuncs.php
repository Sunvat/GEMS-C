<?php
require_once("getConnection.php");
    function insertAcc($newAccommodation){
        $conn = getConn();

        //Insert data from newAccomodation into the database
        $sql = "INSERT INTO accommodations (aname, rname, country, address, maxCap)
        VALUES ('$newAccommodation[0]', '$newAccommodation[1]', '$newAccommodation[2]',
         '$newAccommodation[3]', $newAccommodation[4])";

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
        $sql = "INSERT INTO testAccommodations (aname, rname, country, address, maxCap)
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