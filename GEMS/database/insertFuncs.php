<?php
require('getConnection.php');
    function insertAcc($newAccommodation){
        $conn = getConn();

        //Insert data from newAccomodation into the database
        $sql = "INSERT INTO accommodations (aname, rname, country, address, maxCap)
        VALUES ('" . $newAccommodation[0] . "', '". $newAccommodation[1] ."', '". $newAccommodation[2] ."',
         '". $newAccommodation[3] ."', '". $newAccommodation[4] ."')";

        //Check if the insert was successful
        if ($conn->query($sql) === FALSE) {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
            
            $conn->close();
    }