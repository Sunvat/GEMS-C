<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


class UserController extends Controller{

    function auth(Request $req){

        $req->validate([
            'loginid'=> "required"
        ]);
        return $req->input();
    }
    function index(){
        echo "db connection";
    }
}

    function Login(Request $req){
        return Login::where('workID',$req->input('workID'));
    }
?>