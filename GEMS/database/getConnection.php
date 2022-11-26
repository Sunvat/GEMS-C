<?php
    function getConn(){
        $servername = "localhost";
        $username = "root";
        $password = "root";
        $dbname = "gems";

        // Create connection
        $conn = mysqli_connect($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
            echo "CONNECTION FAILED";
        }

        return $conn;
    }