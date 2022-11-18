<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;
use Illuminate\Support\Facades\DB;

class DatabaseSelectTest extends TestCase
{
    /**
     * Test the selection operator in the database
     *
     * @return void
     */
    public function test_databaseSelect()
    {
        $users = DB::select('select * from users');
 
        foreach ($users as $user) {
            echo $user->name;
        }

        $this->assertTrue(false);
    }
}
