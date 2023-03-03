<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use database;

require_once __DIR__ . '/../../../database/getConnection.php';
class UserController extends Controller{

    function auth(Request $req){

        $req->validate([
            'loginid'=> "required"
        ]);
        return $req->input();
    }

    function Login(Request $req){
      
       $con = getConn();
       // Check connection
       if (mysqli_connect_errno())
       {
           echo "Failed to connect to MySQL: " . mysqli_connect_error();
       }
       // sql query to get region names.
       $result = mysqli_query($con,"SELECT * FROM regions ");

       mysqli_close($con);

       $row = mysqli_fetch_array($result);
       return $row['rname'] + $row['rid'];
       return $row['rid'];
       return $req->input();
    }

}

?>