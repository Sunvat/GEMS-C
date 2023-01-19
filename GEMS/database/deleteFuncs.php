<?php
//Get the details of one accommodation
require_once('getConnection.php');
    function delAcc($ID){
        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        mysqli_query($con,"DELETE FROM accommodations WHERE accID = " . $ID);

        mysqli_close($con);
    }

    function delAccTest($ID){
        $result = true;

        $con = getConn();
        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        $sql = "DELETE FROM testAccommodations WHERE accID = $ID";

        if ($con->query($sql) === FALSE) {
            echo "Error: " . $sql . "<br>" . $conn->error;
            $result = false;
        }

        mysqli_close($con);

        return $result;
    }
