
@extends('Layouts.default')

@section('main')
<body class="mx-auto">
<div>
    <?php
    if(isset($_GET['submit'])){
    require dirname(__DIR__, 3).'/database/insertFuncs.php';

    $newAccount = array(htmlentities($_GET['fname'],htmlentities($_GET['lname']),htmlentities($_GET['email']),htmlentities($_GET['pword']),htmlentities($_GET['ems']),htmlentities($_GET['id']),htmlentities($_GET['reg'])));

    InsertAccountInfo($newAccount);
    header('Location: /Create-Account');
    die();
    }
    ?>
    
    <div class=" w-fit mx-auto px-52 py-24" id = "container">
        <form  method="post" class="mx-auto" action="Create-Account" >
                <label name ="fname" for="fname" class="mx-2 font-bold text-white">First Name:</label>
                <br>
                <input name ="fname" type="text" placeholder="John" class="mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label name ="lname" for="lname"class="mx-2 font-bold text-white">Last Name:</label>
                <br>
                <input  name ="lname" type="text" placeholder="Doe" class="mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label name ="email" for="email"class="mx-2 font-bold text-white">E-mail:</label>
                <br>
                <input name ="email" type="email" placeholder="john.doe@gmail.com" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label name ="pword" for="password"class="mx-2 font-bold text-white">Password:</label>
                <br>
                <input name ="pword" type="password" id="password"  placeholder="Create Password" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <p class = "mx-2 text-xs text-white ">New password must contain:<br>
                <ul class = " mx-6 text-xs list-disc text-white">
                    <li>At least 8 characters</li>
                    <li>At least 1 lowercase character</li>
                    <li>At least 1 upper character</li>
                    <li>At least 1 number</li>
                    <li>At least 1 special character</li>
                </ul>
                </p>
                <br>
                <label name ="pword" for="confirm_pass"class="mx-2 font-bold text-white">Confirm Password:</label>
                <br>
                <input name ="pword" type="password" placeholder="Confirm Password" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label name="ems" for="EMS Division"class="mx-2 font-bold text-white">EMS Division:</label>
                <br>
                <input name="ems" type="text" placeholder="EMS Division" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label  name="id" for="I.D Number"class="mx-2 font-bold text-white">I.D Number:</label>
                <br>
                <input name="id" type="text" placeholder="I.D Number" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label  name="reg" for="Local Region"class="mx-2 font-bold text-white">Local Region Presiding Over:</label>
                <br>
                <input  name="reg" type="text" placeholder="Local Region" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <div class = "flex flex-col jusify-center items-center">
                <br>
    
                <?php
                require dirname(__DIR__, 3).'/database/selectFuncs.php';

                  $result = getRegion();

                  echo "<label for=\"chooseRegion\" class=\"block mb-2 text-large font-medium text-white\">Select a region to browse available accommodations in that region:</label>";
                  echo "<select id=\"countries\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500\">";
  
                while($row = mysqli_fetch_array($result)){
                 echo "<option value =" . htmlspecialchars($row['rname'], ENT_QUOTES, 'UTF-8') . ">" . htmlspecialchars($row['rname'], ENT_QUOTES, 'UTF-8') . "</option>";
                 }
                 echo"</select>";
                ?>
                <br>
                <label for="Confirmation Code"class="mx-2 font-bold text-white">Confirmation Code: (Emailed to new assignee when new RA is assigned)</label>
                <br>
                <input type="text" placeholder="Confirmation Code" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <br>
                <br>
                <br>
        </form>
        <!--checking password criteria-->

        <div class = "flex flex-col justify-center items-center group bg-Lgreen border-2 border-Dgreen rounded-full hover:bg-gold w-25 ">
            <button>
                <a href="{{route('Account-Created')}}" class="text-lg mx-3 text-slate-800 group-hover:text-white transition">Create Account</a>
            </button>
         </div>
         <br>
         <br>
         <br>
         <br>
    </div>
 </div>

</body>
@endsection