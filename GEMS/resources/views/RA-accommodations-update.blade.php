@extends('Layouts.RA-default')
@section('main')
<body>
<b>


</b></br></br>

<div class = "flex flex-col justify-center items-center">
  <div class = "p-1 bg-Glohaven-Orange rounded-md">
    <h1 class = "text-4xl">Update Accommodation:</h1>
  </div> 
</div>

<?php
if( isset($_GET['submit']) )
{
    require_once dirname(__DIR__, 3).'/database/updateFuncs.php';

    $updateAccommodation = array(htmlentities($_GET['locName']), htmlentities($_GET['address']), htmlentities($_GET['maxCap']), htmlentities($_GET['popChange']), htmlentities($_GET['desc']),
    htmlentities($_GET['image']), htmlentities($_GET['wca']), htmlentities($_GET['pets']), htmlentities($_GET['med']),
    htmlentities($_GET['beds']), htmlentities($_GET['high']), htmlentities($_GET['food']), htmlentities($_GET['water']),
    htmlentities($_GET['ID']));

    updateAccDet($updateAccommodation);
    header('Location: /view-accommodationRA?ID='. $updateAccommodation[13]);
    exit();
}
?>

<?php
require_once dirname(__DIR__, 3).'/database/selectFuncs.php';

//Create an array for pre-checked boxes in the form
$boolCheck = ["unchecked", "unchecked", "unchecked", "unchecked", "unchecked", "unchecked", "unchecked"];
//Get the ID from the URL
$ID = $_GET["ID"];
//Get the accommodation info
//Translate results into an array
$row = getAccDet($ID);

//See which boxes need to be checked
if ($row['WCA'] == true){
  $boolCheck[0] = "checked";
}
if ($row['Pets'] == true){
  $boolCheck[1] = "checked";
}
if ($row['Med'] == true){
  $boolCheck[2] = "checked";
}
if ($row['Bed'] == true){
  $boolCheck[3] = "checked";
}
if ($row['HighGround'] == true){
  $boolCheck[4] = "checked";
}
if ($row['Food'] == true){
  $boolCheck[5] = "checked";
}
if ($row['Water'] == true){
  $boolCheck[6] = "checked";
}
echo true;
echo "<div class=\"container py-10 px-10 mx-0 min-w-full grid place-items-center\" id = \"container\">
<form action= \"?ID=$ID\" method=\"get\" id=\"updateForm\">
  <input type=\"hidden\" name=\"ID\" value=\"$ID\" />
  <input type=\"hidden\" id=\"wca\" name=\"wca\" value=\"False\" />
  <input type=\"hidden\" id=\"pets\" name=\"pets\" value=\"False\" />
  <input type=\"hidden\" id=\"med\" name=\"med\" value=\"False\" />
  <input type=\"hidden\" id=\"beds\" name=\"beds\" value=\"False\" />
  <input type=\"hidden\" id=\"high\" name=\"high\" value=\"False\" />
  <input type=\"hidden\" id=\"food\" name=\"food\" value=\"False\" />
  <input type=\"hidden\" id=\"water\" name=\"water\" value=\"False\" />

  <label for=\"locName\">Location Name:</label><br>
  <input type=\"text\" id=\"locName\" name=\"locName\" value=\"" . $row['aname'] . "\" required><br>
  <label for=\"locName\">Address:</label><br>
  <input type=\"text\" id=\"address\" name=\"address\" value=\"" . $row['address'] . "\" required><br>
  <label for=\"maxCap\">Maximum Capacity:</label><br>
  <input type=\"number\" id=\"maxCap\" name=\"maxCap\" value=\"" . $row['maxCap'] . "\" required><br>
  <label for=\"popChange\">Net Change in Occupancy:</label><br>
  <input type=\"number\" id=\"popChange\" name=\"popChange\" value=\"0\" required><br>
  <label for=\"desc\">Description:</label><br>
  <input type=\"text\" id=\"desc\" name=\"desc\" value=\"" . $row['descr'] . "\"><br>
  <label for=\"desc\">Image URL:</label><br>
  <input type=\"text\" id=\"image\" name=\"image\" value=\"" . $row['image'] . "\"><br>
  <label for=\"wca\">Wheelchair Access</label>
  <input type=\"checkbox\" id=\"wca\" name=\"wca\" value=\"True\" ". $boolCheck[0] ."><br>
  <label for=\"pets\">Allows Pets</label>
  <input type=\"checkbox\" id=\"pets\" name=\"pets\" value=\"true\" ". $boolCheck[1] ."><br>
  <label for=\"med\">Medecine Available</label>
  <input type=\"checkbox\" id=\"med\"  name=\"med\" value=\"true\" ". $boolCheck[2] ."><br>
  <label for=\"beds\">Beds Available</label>
  <input type=\"checkbox\" id=\"beds\" name=\"beds\" value=\"true\" ". $boolCheck[3] ."><br>
  <label for=\"high\">On High Ground</label>
  <input type=\"checkbox\" id=\"high\" name=\"high\" value=\"true\" ". $boolCheck[4] ."><br>
  <label for=\"food\">Food Provided</label>
  <input type=\"checkbox\" id=\"food\" name=\"food\" value=\"true\" ". $boolCheck[5] ."><br>
  <label for=\"water\">Water Provided</label>
  <input type=\"checkbox\" id=\"water\" name=\"water\" value=\"true\" ". $boolCheck[6] ."><br><br>
  <div class=\"md:flex md:items-center\">
    <div class=\"md:w-1/3\"></div>
    <div class=\"md:w-2/3\">
    <input type=\"submit\" name=\"submit\" value=\"submit\" class=\"py-2 px-4 text-sm font-medium text-black bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-black focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-black dark:hover:text-black dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-black\"></input>
  </div></div>
</form></div>"

?>



</body>
@endsection