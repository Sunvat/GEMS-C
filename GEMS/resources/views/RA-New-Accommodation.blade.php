@extends('Layouts.RA-default')
@section('main')
<?php
if( isset($_GET['submit']) )
{
    require dirname(__DIR__, 3).'/database/insertFuncs.php';

    $newAccommodation = array(htmlentities($_GET['locName']), htmlentities($_GET['address']), htmlentities($_GET['regions']),
     htmlentities($_GET['maxCap']), htmlentities($_GET['desc']), htmlentities($_GET['image']), htmlentities($_GET['wca']),
     htmlentities($_GET['pets']), htmlentities($_GET['med']), htmlentities($_GET['beds']), htmlentities($_GET['high']),
     htmlentities($_GET['food']), htmlentities($_GET['water']));

    insertAcc($newAccommodation);
    header('Location: /RA-Accommodations?rID=' . $newAccommodation[2]);
    die();
}
?>

<body>

<br><br>
<div class = "flex flex-col justify-center items-center">
  <h1 class = "p-2 text-4xl text-black bg-Dgreen rounded-lg border-2 border-gold hover:bg-Lgreen">New Accommodation</h1>
</div>

<?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';

    $result = getRegionAndID();

    echo "<div class=\"container py-10 px-10 mx-0 min-w-full grid place-items-center\" id = \"container\">";
    echo "<form action=\"\" method=\"get\" id=\"newForm\">";
    echo "<input type=\"hidden\" id=\"wca\" name=\"wca\" value=\"False\" />
    <input type=\"hidden\" id=\"pets\" name=\"pets\" value=\"False\" />
    <input type=\"hidden\" id=\"med\" name=\"med\" value=\"False\" />
    <input type=\"hidden\" id=\"beds\" name=\"beds\" value=\"False\" />
    <input type=\"hidden\" id=\"high\" name=\"high\" value=\"False\" />
    <input type=\"hidden\" id=\"food\" name=\"food\" value=\"False\" />
    <input type=\"hidden\" id=\"water\" name=\"water\" value=\"False\" />
    
    <label for=\"locName\" class=\"block mb-2 text-large font-medium text-black jusify-center\">Accommodation Name:</label>
    <input type=\"text\" id=\"locName\" name=\"locName\" placeholder=\"e.g UBC Campus\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500\" required><br>
    <label for=\"address\" class=\"block mb-2 text-large font-medium text-black\">Address:</label>
    <input type=\"text\" id=\"address\" name=\"address\" placeholder=\"e.g 755 Academy Way, Kelowna, BC\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500\" required><br>
    <label for=\"maxCap\" class=\"block mb-2 text-large font-medium text-black\">Total Capacity:</label>
    <input type=\"number\" id=\"maxCap\" name=\"maxCap\" placeholder=\"e.g 500\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500\" required><br>";
    echo "<label for=\"regions\" class=\"block mb-2 text-large font-medium text-black\">Region</label>";
    echo "<select id=\"regions\" name=\"regions\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500\" required>";
  
    while($row = mysqli_fetch_array($result)){
      echo "<option value =" . $row['rID'] . ">" . $row['rname'] . "</option>";
    }

    echo"</select><br>
    <label for=\"desc\" class=\"font-medium text-black\">Description:</label><br>
    <textarea id=\"desc\" name=\"desc\" placeholder=\"Your description goes here.\" rows=\"4\" cols=\"50\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500\"></textarea><br>
    <label for=\"image\" class=\"font-medium text-black\">Image URL:</label><br>
    <input type=\"text\" id=\"image\" name=\"image\" placeholder=\"URL Here\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500\"><br>
    <label for=\"wca\" class=\"font-medium text-black\">Wheelchair Access</label>
    <input type=\"checkbox\" id=\"wca\" name=\"wca\" value=\"True\"><br>
    <label for=\"pets\" class=\"font-medium text-black\">Allows Pets</label>
    <input type=\"checkbox\" id=\"pets\" name=\"pets\" value=\"true\"><br>
    <label for=\"med\" class=\"font-medium text-black\">Medicine Available</label>
    <input type=\"checkbox\" id=\"med\"  name=\"med\" value=\"true\"><br>
    <label for=\"beds\" class=\"font-medium text-black\">Beds Available</label>
    <input type=\"checkbox\" id=\"beds\" name=\"beds\" value=\"true\"><br>
    <label for=\"high\" class=\"font-medium text-black\">On High Ground</label>
    <input type=\"checkbox\" id=\"high\" name=\"high\" value=\"true\"><br>
    <label for=\"food\" class=\"font-medium text-black\">Food Provided</label>
    <input type=\"checkbox\" id=\"food\" name=\"food\" value=\"true\"><br>
    <label for=\"water\" class=\"font-medium text-black\">Water Provided</label>
    <input type=\"checkbox\" id=\"water\" name=\"water\" value=\"true\">";
    echo "<div class=\"flex flex-col jusify-center items-center\">
    <input type=\"submit\" name=\"submit\" value=\"Submit\" class=\"py-2 px-4 text-sm font-medium text-black bg-Dgreen rounded-lg border-2 border-gold hover:bg-Lgreen\"></input>
    </div></div>";
    echo "</form></div>";
?>

</body>
@endsection