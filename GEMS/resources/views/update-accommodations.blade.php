@extends('Layouts.RA-default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>
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
    require dirname(__DIR__, 3).'/database/updateFuncs.php';

    $updateAccommodation = array(htmlentities($_GET['locName']), htmlentities($_GET['maxCap']),
    htmlentities($_GET['popChange']), htmlentities($_GET['desc']), htmlentities($_GET['image']),
    htmlentities($_GET['desc']), htmlentities($_GET['desc']), htmlentities($_GET['desc']));

    //updateAccDet($updateAccommodation);
    $ID = $_GET["ID"];
    header('Location: /view-accommodationRA?ID='. $ID);
    exit();
}
?>

<?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';

//Create an array for pre-checked boxes in the form
$boolCheck = ["unchecked", "unchecked", "unchecked", "unchecked", "unchecked", "unchecked", "unchecked"];
//Get the ID from the URL
$ID = $_GET["ID"];
//Get the accommodation info
$result = getAccDet($ID);
//Translate results into an array
$row = mysqli_fetch_array($result);

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
  <label for=\"locName\">Location Name:</label><br>
  <input type=\"text\" id=\"locName\" name=\"locName\" value=\"" . $row['aname'] . "\"><br>
  <label for=\"maxCap\">Maximum Capacity:</label><br>
  <input type=\"text\" id=\"maxCap\" name=\"maxCap\" value=\"" . $row['maxCap'] . "\"><br>
  <label for=\"popChange\">Net Change in Occupancy:</label><br>
  <input type=\"text\" id=\"popChange\" name=\"popChange\" value=\"0\"><br>
  <label for=\"desc\">Description:</label><br>
  <input type=\"text\" id=\"desc\" name=\"desc\" value=\"" . $row['desc'] . "\"><br>
  <label for=\"desc\">Image URL:</label><br>
  <input type=\"text\" id=\"image\" name=\"image\" value=\"" . $row['image'] . "\"><br>
  <input type=\"checkbox\" id=\"wca\" value=\"true\" ". $boolCheck[0] .">
  <label for=\"wca\">Wheelchair Access</label><br>
  <input type=\"checkbox\" id=\"pets\" value=\"true\" ". $boolCheck[1] .">
  <label for=\"pets\">Allows Pets</label><br>
  <input type=\"checkbox\" id=\"med\" value=\"true\" ". $boolCheck[2] .">
  <label for=\"med\">Medecine Available</label><br>
  <input type=\"checkbox\" id=\"beds\" value=\"true\" ". $boolCheck[3] .">
  <label for=\"beds\">Beds Available</label><br>
  <input type=\"checkbox\" id=\"high\" value=\"true\" ". $boolCheck[4] .">
  <label for=\"high\">On High Ground</label><br>
  <input type=\"checkbox\" id=\"food\" value=\"true\" ". $boolCheck[5] .">
  <label for=\"food\">Food Provided</label><br>
  <input type=\"checkbox\" id=\"water\" value=\"true\" ". $boolCheck[6] .">
  <label for=\"water\">Water Provided</label><br><br>
  <input type=\"hidden\" name=\"ID\" value=\"$ID\" />
  <div class=\"md:flex md:items-center\">
    <div class=\"md:w-1/3\"></div>
    <div class=\"md:w-2/3\">
    <input type=\"submit\" name=\"submit\" value=\"submit\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white\"></input>
  </div></div>
</form></div>"

?>



</body>
@endsection