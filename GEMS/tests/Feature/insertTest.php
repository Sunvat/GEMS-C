<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;
use vendor;
require('database/insertFuncs.php');

class databaseTest extends TestCase
{
    /**
     * @return void
     */
    public function test_Insert()
    {
        $success = insertTestAcc();
        
        if ($success == TRUE) {
            echo "New record created successfully.";
            $this->assertTrue(true);
        } else {
            echo "Failed to create record.";
            $this->assertTrue(false);
        }
    }
    public function test_Select()
    {
        // Create connection
        $conn = getConn();

        //Get results
        $sql = "SELECT aname FROM accommodations WHERE aname='UBCO LIB 305';";
        $result = mysqli_query($conn,$sql);
        $rows = $result->fetch_row();

        //Results exist
        if (strcmp($rows[0], "UBCO LIB 305") == 0) {
            $conn->close();
            $this->assertTrue(true);
        //Results don't exist
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            $conn->close();
            $this->assertTrue(false);
        }
    }
}
