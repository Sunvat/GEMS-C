
@extends('Layouts.default')

@section('main')

<body class="mx-auto">
<div>
        
    <?php  
   echo "<div class=\" w-fit mx-auto px-52 py-24\" id = \"container\">";
   echo " <form  method=\"get\" class=\"mx-auto\" action=\"\">";
   echo "<label name =\"fname\" for=\"fname\" class=\"mx-2 font-bold text-white\">First Name:</label>";
   echo " <br>";
   echo "<input id=\"fname\" name =\"fname\" type=\"text\" placeholder=\"John\" class=\"mx-2 mb-4 py-2 px-2 border-2 rounded\">";
   echo " <br>";
   echo "<label name =\"lname\" for=\"lname\" class=\"mx-2 font-bold text-white\">Last Name:</label>";
   echo " <br>";
   echo "<input id=\"lname\" name =\"lname\" type=\"text\" placeholder=\"Doe\" class=\"mx-2 mb-4 py-2 px-2 border-2 rounded\">";
   echo "<br>";
   echo "<label name =\"email\" for=\"email\"class=\"mx-2 font-bold text-white\">E-mail:</label>";
   echo "       <br>";
   echo "       <input  id=\"email\" name =\"email\" type=\"email\" placeholder=\"john.doe@gmail.com\" class=\" mx-2 mb-4 py-2 px-2 border-2 rounded\">";
   echo "       <br>";
   echo "       <label  name =\"pword\" for=\"password\"class=\"mx-2 font-bold text-white\">Password:</label>";
   echo "       <br>";
   echo "       <input id=\"pword\" name =\"pword\" type=\"password\"   placeholder=\"Create Password\" class=\" mx-2 mb-4 py-2 px-2 border-2 rounded\">";
   echo "       <p class = \"mx-2 text-xs text-white \">New password must contain:<br>";
                if (isset($_GET['submit'])) {
                    $paword = $_GET['pword'];
                    $conpass = $_GET['confrim_pword'];
                    if (strcmp($password, $conpass) != 0) {
                        echo "Invalid Password please use the criteria mentioned.";
                    } else {
                        if (strlen($paword) < 8) {
                            echo "Password must be at least 8 characters long";
                        } elseif (!preg_match("#[a-z]+#", $password)) {
                            echo "Password must contain at least one lowercase letter";
                        } elseif (!preg_match("#[A-Z]+#", $password)) {
                            echo "Password must contain at least one uppercase letter";
                        } elseif (!preg_match("#[0-9]+#", $password)) {
                            echo "Password must contain at least one number";
                        } elseif (!preg_match("#[\W]+#", $password)) {
                            echo "Password must contain at least one special character";
                    }
                }
            }
            else{
                require dirname(__DIR__, 3).'/database/insertFuncs.php';
                $newAccount = array(htmlentities($_GET['fname']),htmlentities($_GET['lname']),htmlentities($_GET['email']),htmlentities($_GET['pword']),htmlentities($_GET['id']),htmlentities($_GET['rID']));
                InsertAccountInfo($newAccount);
                header('Location: /Create-Account');
                die();
                }
                echo "<ul class =\" mx-6 text-xs list-disc text-white\">";
                echo " <li>At least 8 characters</li>";
                echo " <li>At least 1 lowercase character</li>";
                echo " <li>At least 1 upper character</li>";
                echo "<li>At least 1 number</li>";
                echo "<li>At least 1 special character</li>";
                echo "</ul>";
                echo "</p>";
                echo "<br>";
                echo "<label name =\"confrim_pword\" for=\"confirm_pass\"class=\"mx-2 font-bold text-white\">Confirm Password:</label>";
                echo "<br>";
                echo "<input id=\"confirm_pword\" name =\"confrim_pword\" type=\"password\" placeholder=\"Confirm Password\" class=\" mx-2 mb-4 py-2 px-2 border-2 rounded\">";
                echo "<br>";
                ?>
                <label  name="id" for="I.D Number"class="mx-2 font-bold text-white">I.D Number:</label>
                <br>
                <input id="id" name="id" type="text" placeholder="I.D Number" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
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
                <input type='submit' name='submit' value='submit'></input>
                 </div>
        </form>
    </div>
 </div>

</body>
@endsection