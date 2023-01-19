<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;
use vendor;
require('database/insertFuncs.php');
require('database/selectFuncs.php');
require('database/deleteFuncs.php');

//Used in the delete test
$ID = 0;

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
        //Get Results
        $result = getAllAcc("TESTING");
        $rows = $result->fetch_row();
        $ID = $rows[0];

        //Results exist
        if (strcmp($rows[1], "Hotel California") == 0 && strcmp($rows[2], "Dark Desert Highway") == 0) {
            $this->assertTrue(true);
        //Results don't exist
        } else {
            echo "Error: Could not find requested data.\nInstead retrieved $rows[1] at $rows[2].\n" . $conn->error;
            $this->assertTrue(false);
        }
    }

    public function test_Delete()
    {
        // Create connection
        $conn = getConn();

        //Get Results
        $result = getAllAcc("TESTING");
        $rows = $result->fetch_row();
        $ID = $rows[0];

        //Results exist
        if (strcmp($rows[1], "Hotel California") == 0 && strcmp($rows[2], "Dark Desert Highway") == 0) {
            $conn->close();
            $this->assertTrue(true);
        //Results don't exist
        } else {
            echo "Error: Could not find requested data.\nInstead retrieved $rows[1] at $rows[2].\n" . $conn->error;
            $conn->close();
            $this->assertTrue(false);
        }
    }
}
