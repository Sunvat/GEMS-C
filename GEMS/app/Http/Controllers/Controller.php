<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    function getAccInfo(Request $req){ // function for Create Account Page
        $num = mt_rand(100000,999999);
        $str = "You Have been registered. Your ID is: ";
       printf("%s",$str);
       printf("%d",$num);
        return $req->input();
    }
}
?>