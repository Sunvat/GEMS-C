@extends('Layouts.default')
@section('main')
<body>
    <h1 class="font-semibold text-2xl flex flex-col justify-center items-center pb-5">Log in:</h1>
    <p class=" font-semibold text-xl flex flex-col justify-center items-center pb-5">Welcome back, please enter your detials</p>
    <div class="flex flex-col justify-center items-center rounded-md ">
     @if (session('status'))
        <div class="success">
        {{ session('status') }}
        </div>
        @endif
     @if ($errors->any())
     <div class="alert alert-danger flex flex-col justify-center items-center ">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
        </div>
     @endif


        <form action="Login" method = post class="flex flex-col justify-center items-center bg-white w-96 h-64 rounded-md ">
        <div class=" pb-5 font-semibold text-medium "><a class=" text-red-500 ">*</a>are required fields</div>
        @csrf
        <label class="pb-2 font-semibold text-medium" for="workID"><a class="font-bold text-red-500">*</a>ID:</label>
        <input class="border-2" type="text" name="workID" id="workID">
        @error('workID')
                <div class="danger font-bold text-red-500">{{ $message }}</div>
            @enderror
            
        <br>
        <label class="pb-2 font-semibold text-medium" for="password"><a class="font-bold text-red-500">*</a>Password</label>
        <input class="border-2" type="password" name="password" id="password">
        @error('password')
                <div class="danger font-bold text-red-500">{{ $message }}</div>
            @enderror
        <button type="submit" class="mt-5 border-2 rounded-md p-1">Log In</button>
        
    </form>
    </div>
</body>
@endsection
<!--<script>
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
    </script>-->
    <!-- ?php  
if(isset($_POST["submit"])){  
  
    if(!empty($_POST['id']) && !empty($_POST['pword'])) {  
        $user=$_POST['id'];  
        $pass=$_POST['pword'];  
      
        $con=mysql_connect('localhost','root','') or die(mysql_error());  
        mysql_select_db('user_registration') or die("cannot select DB");  
      
        $query=mysql_query("SELECT * FROM useraccounts WHERE id='".$user."' AND pword='".$pass."'");  
        $numrows=mysql_num_rows($query);  
        if($numrows!=0)  
        {  
        while($row=mysql_fetch_assoc($query))  
        {  
        $dbusername=$row['id'];  
        $dbpassword=$row['pword'];  
        }  
      
        if($user == $dbusername && $pass == $dbpassword)  
        {  
        session_start();  
        $_SESSION['sess_user']=$user;  
      
        /* Redirect browser */  
        header("Location: member.php");  
    }  
    } else {  
    echo "Invalid username or password!";  
    }  
    } else {  
    echo "All fields are required!";  
    }  
    }  
    ?>-->