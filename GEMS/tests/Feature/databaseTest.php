<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;
use vendor;
require('database/insertFuncs.php');
require('database/selectFuncs.php');
require('database/deleteFuncs.php');

class databaseTest extends TestCase
{
    /**
     * @return void
     */

    //Used in the delete test
    public int $ID;
    
    public function test_Insert()
    {
        $success = insertTestAcc();
        
        if ($success == TRUE) {
            echo "New record created successfully.\n";
            $this->assertTrue(true);
        } else {
            echo "Failed to create record.\n";
            $this->assertTrue(false);
        }
    }

    public function test_Select()
    {
        //Get Results
        $result = getAllAcc(-1);
        $rows = $result->fetch_row();

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
        $success = delAccTest();
        
        if ($success == TRUE) {
            echo "Deleted test accommodation Successfully.\n";
            $this->assertTrue(true);
        } else {
            echo "Failed to delete record.\n";
            $this->assertTrue(false);
        }
    }
}
