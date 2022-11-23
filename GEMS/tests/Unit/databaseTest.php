<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;
use vendor;

class databaseTest extends TestCase
{
    /**
     * @return void
     */
    public function test_Insert()
    {
        $servername = "localhost";
        $username = "root";
        $password = "root";
        $dbname = "gems";

        // Create connection
        $conn = mysqli_connect($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            $this->assertTrue(false);
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "INSERT INTO accommodations (name, address, maxCap)
        VALUES ('UBCO LIB 305', 'Test Street', '50')";

        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
            $conn->close();
            $this->assertTrue(true);
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            $conn->close();
            $this->assertTrue(false);
        }
    }
    public function test_Select()
    {
        $servername = "localhost";
        $username = "root";
        $password = "root";
        $dbname = "gems";

        // Create connection
        $conn = mysqli_connect($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            $this->assertTrue(false);
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "SELECT name FROM accommodations WHERE name='UBCO LIB 305';";
        $result = mysqli_query($conn,$sql);
        $rows = $result->fetch_row();

        if (strcmp($rows[0], "UBCO LIB 305") == 0) {
            $conn->close();
            $this->assertTrue(true);
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            $conn->close();
            $this->assertTrue(false);
        }
    }
}
