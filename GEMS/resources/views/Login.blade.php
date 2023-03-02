@extends('Layouts.default')

@section('main')
<div class = "flex justify-center items-center p-4">
    <h1 class = " text-lg font-semibold text-Lgreen my-14">Please Log In(Only for Reservation Agents)</h1>
</div>
<div class = "flex flex-col items-center">
    <div>
        <form action="" method = post id="loginForm" onSubmit ="return validate();"> <!-- dont forget to add a post or someother method when needed -->
            <!-- used to create the login id and password slots-->
            <div class = "py-2">
                <label class = "px-2 font-bold text-white">Login ID</label>
                <input type="text" id = "id" name = "id" class="px-3 py-2 placeholder-slate-300 text-slate-600 relative bg-white bg-white rounded text-base border-0 shadow outline-none focus:outline-none focus:ring w-full" required >
                <span class="font-bold text-red-500" id="user_info"></span><br>  
            </div>
            <div>
                <label for="Password" class = "px-2 font-bold text-white ">Password</label>
                <input type="password" id = "pword" name = "id" class = "px-3 py-2 placeholder-slate-300 text-slate-600 relative bg-white bg-white rounded text-base border-0 shadow outline-none focus:outline-none focus:ring w-full" required ><br>
                <span class="font-bold text-red-500" id="pass_info"></span>
            </div class = "py-2">
            <br>
            <div class = "flex flex-col justify-center items-center">
                <input class=" px-4 font-bold text-Dgreen bg-Lgreen rounded-full hover:bg-gold" type="submit" onClick= "return validate()" value="Login">
                </input>
                <br>
            </div>
        </form>
    </div>
    <div class = "flex gap-1">
        <div>
            <h1 class = "text-lg font-semibold text-white">Don't have an account yet. No worries, create an account here:</h1>
        </div>
        <div>
           <intput >
                <a href="{{route('Create-Account')}}" class ="display: block  font-bold text-Dgreen bg-Lgreen rounded-full hover:bg-gold">Create Account</a>
            </input>
        </div>
    </div>
</div>
<script>
    function validate() {
        var valid = true;
        document.getElementById("user_info").innerHTML = "";
        document.getElementById("pass_info").innerHTML = "";
        
        var userName = document.getElementById("id").value;
        var password = document.getElementById("pword").value;
        if(userName == "") 
        {
            document.getElementById("user_info").innerHTML = "User ID is Required to login.";
        	valid = false;
        }
        if(password == "") 
        {
        	document.getElementById("pass_info").innerHTML = "Password is required to login";
            valid = false;
        }
        return valid;
    }
    </script>
   
   <?php  
   require dirname(__DIR__, 3).'/database/getConnection.php';
   $con  = getConn();
if(isset($_POST["submit"])){  
  echo "hello";
if(!empty($_POST['id']) && !empty($_POST['pword'])) {  
    $user=$_POST['id'];  
    $pass=$_POST['pword'];  
  
}
}
?>  
@endsection
