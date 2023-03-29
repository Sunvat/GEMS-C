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
        //input id and password
        session_start();
        $inid = $req-> input('workID');
        $inpass = $req -> input('password');
        if( $req->validate([
            'workID'=>'required',
            'password'=>'required'],
            ['workID.required'=>'ID is required',
            'password.required'=>'The password is required'])){
        }
       $con = getConn();
       // Check connection
        if (mysqli_connect_errno())
       {
           echo "Failed to connect to MySQL: " . mysqli_connect_error();
       }
       // sql query to get region names.
       $result = mysqli_query($con,"SELECT pword, id FROM useraccounts WHERE id = '$inid' ");
       
       mysqli_close($con);

       $row = mysqli_fetch_array($result);
     //works till here
    // check if workID and id AND password, pword are matching then redirect to RA-main.
       if(empty($row['id'])){
        echo "<h2> ID is invalid please try again.</h2>";
        return redirect("/Login")->withErrors("ID is invalid please try again");
       }
       else{
        $dbid = $row['id'];
        $dbpass = $row['pword'];
        if($dbid == $inid && $dbpass==$inpass){
            $_SESSION ['loggedin'] = true;
            header("Location: /main-RA");
           exit();
          }
          else{
        }
        //if passwords match
         echo "<h2>Login failed check your ID and password and try again.</h2>";
       return redirect("/Login")->withErrors("Login failed check your ID and password ");
         exit();
       }
      
       //if ids are the same
      
      
    }


    function CreateAccount(){
        return redirect('/Login')->with('status', 'Account registered!');
    }

}

?>