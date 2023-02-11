
@extends('Layouts.default')

@section('main')

<body class="mx-auto">
<div>
        
    <?php
     require dirname(__DIR__, 3).'/database/insertFuncs.php';
      if (isset($_GET['submit'])) {
        $paword = htmlentities($_GET['pword']);
        $conpass = htmlentities($_GET['confrim_pword']);
        
        if (strcmp($paword, $conpass) != 0) {
            echo "<br>";
            echo "<br>";
           
            echo "<div class=\"mt-20px flex flex-col justify-center items-center font-bold text-red \">The passwords do not match please try again.</div>";
           
        } else if (strlen($paword) < 8) {
       
            echo "<br>";
            echo "<br>";
            echo "<script type=\"text/JavaScript\"> 
            document.getElementById(\"minChar\").style.color = \"#fc7703\";
            </script>";
                echo "<div class=\"mt-20px  flex flex-col justify-center items-center text-red-500 \">Password must be at least 8 characters long.</div>";

            } elseif (!preg_match("#[a-z]+#", $paword)) {
                echo "<br>";
                echo "<br>";
               
                echo "<div class=\"mt-20px  flex flex-col justify-center items-center text-red-500 \">Password must contain at least one lowercase letter.</div>";
                
            } elseif (!preg_match("#[A-Z]+#", $paword)) {
               
                echo "<br>";
                echo "<br>";
                echo "<div class=\"mt-20px  flex flex-col justify-center items-center text-red-500 \">Password must contain at least one uppercase letter.</div>";

            } elseif (!preg_match("#[0-9]+#", $paword)) {
                
                echo "<br>";
                echo "<br>";
                echo "<div class=\"mt-20px flex flex-col justify-center items-center text-red-500 \">Password must contain at least one number.</div>";
               
            } elseif (!preg_match("#[\W]+#", $paword)) {
                
                echo "<br>";
                echo "<br>";
                echo "<div class=\"mt-20px  flex flex-col justify-center items-center text-red-500 \">Password must contain at least one special character.</div>";
               
        }
    else {

    $newAccount = array(htmlentities($_GET['fname']),htmlentities($_GET['lname']),htmlentities($_GET['email']),htmlentities($_GET['pword']),htmlentities($_GET['id']),htmlentities($_GET['rID']));

    InsertAccountInfo($newAccount);
    header('Location: /Create-Account');
    die();
    }
    }
    
    ?>
    <div class=" w-fit mx-auto px-52 py-14" id = "container">
        <form class="flex-items-center" method="get" class="mx-auto" action="" >
                
                <label name ="fname" for="fname" class="mx-2 font-bold text-white">First Name:<a class="text-red-500"> *</a></label>
                <br>
                <input id="fname" name ="fname" type="text" required placeholder="John" class="mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label name ="lname" for="lname"class="mx-2 font-bold text-white">Last Name:<a class="text-red-500"> *</a></label>
                <br>
                <input id="lname" name ="lname" type="text" required placeholder="Doe" class="mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label name ="email" for="email"class="mx-2  font-bold text-white">E-mail:<a class="text-red-500"> *</a></label>
                <br>
                <input  id="email" name ="email" type="email" required placeholder="john.doe@gmail.com" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label  name ="pword" for="password"class="mx-2 font-bold text-white">Password:<a class="text-red-500"> *</a></label>
                <br>
                <input id="pword" name ="pword" type="password"   placeholder="Create Password" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <p class = "mx-2 text-xs text-white ">New password must contain:<br>
                <?php
              
                ?>
                <ul class = " mx-6 text-xs list-disc text-white">
                    <li id="minChar">At least 8 characters</li>
                    <li id="lowChar">At least 1 lowercase character</li>
                    <li id="upChar">At least 1 upper character</li>
                    <li id="numChat">At least 1 number</li>
                    <li id="speChar">At least 1 special character</li>
                </ul>
                </p>
                <br>
                <label name ="confrim_pword" for="confirm_pass"class="mx-2 font-bold text-white">Confirm Password:<a class="text-red-500"> *</a></label>
                <br>
                <input id="confirm_pword" name ="confrim_pword" type="password" required placeholder="Confirm Password" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                
                <label  name="id" for="I.D Number"class="mx-2 font-bold text-white">I.D Number:<a class="text-red-500"> *</a></label>
                <br>
                <input id="id" name="id" type="text" placeholder="I.D Number" required class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <?php
    require dirname(__DIR__, 3).'/database/selectFuncs.php';

    $result = getRegionAndID();

    echo "<label for=\"chooseRegion\" class=\"block mb-2 text-large font-medium text-gray-900 dark:text-grey\">Select a region to browse available accommodations in that region:</label>";
    
    echo "<select name = \"rID\" id=\"rID\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500\">";

    while($row = mysqli_fetch_array($result)){
      echo "<option value =" . htmlspecialchars($row['rID'], ENT_QUOTES, 'UTF-8') . ">" . htmlspecialchars($row['rID'], ENT_QUOTES, 'UTF-8') .": ". htmlspecialchars($row['rname'], ENT_QUOTES, 'UTF-8') . "</option>";
    }
    echo"</select>";
    echo "<br>";
    echo "<div class = \"flex flex-col jusify-center items-center\">";
    echo "</div>";
    ?>
                <label for="Confirmation Code"class="mx-2 font-bold text-white">Confirmation Code: (Emailed to new assignee when new RA is assigned)</label>
                <br>
                <input type="text" placeholder="Confirmation Code" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <div class = "flex flex-col justify-center items-center group bg-Lgreen border-2 border-Dgreen rounded-full hover:bg-gold w-25 ">
                <input onclick="" type='submit' name='submit' value='submit'></input>
                 </div>
        </form>
        <p class="mt-10 font-bold text-white"><a class="font-bold text-red-500">*</a> Are Required fields</p>
    </div>
 </div>

</body>
@endsection