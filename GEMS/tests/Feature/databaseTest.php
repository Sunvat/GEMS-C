<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;
use vendor;
require('database/getConnection.php');

class databaseTest extends TestCase
{
    /**
     * @return void
     */
    public function test_Insert()
    {
        // Create connection
        $conn = getConn();

        $sql = "INSERT INTO accommodations (aname, address, rname, country, maxCap)
        VALUES ('UBCO LIB 305', 'Test Street', 'Okanagan', 'Canada', '50')";

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
        // Create connection
        $conn = getConn();

        $sql = "SELECT aname FROM accommodations WHERE aname='UBCO LIB 305';";
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
