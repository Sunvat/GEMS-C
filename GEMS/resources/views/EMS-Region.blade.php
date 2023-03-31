@extends('Layouts.default')

@section('main')
<!--Page is used to transfer people to Accomodation by selecting Region -->
<!-- The users for this page will be EMS-->.
<?php
// when submit is clicked it will go to the accomodations page with the region ID
if( isset($_GET['submit']) )
{
    require dirname(__DIR__, 3).'/database/selectFuncs.php';

    $rID = htmlentities($_GET['regions']);

    header('Location: /Accommodations?rID=' . $rID);
    die();
}
?>
<div class = "flex flex-col justify-center items-center">

  <div class = "m-4 bg-slate-400 rounded-md">
    <h1 class = "text-2xl p-1 w-40 rounded flex flex-col justify-center items-center bg-blak/90">Select Region</h1> 

  </div>
</div>

<div class = "flex flex-col jusify-center items-center">
  <form id="ChooseRegion">
    <?php
    //get regoin information from database
    require dirname(__DIR__, 3).'/database/selectFuncs.php';

    $result = getRegionAndID();

    //display information in a drop down menu
    echo "<form action=\"\" method=\"get\" id=\"regForm\">";
    echo "<label for=\"regions\" class=\"block mb-2 text-large font-medium text-gray-900\">Select a region to browse available accommodations in that region:</label>";
    echo "<select id=\"regions\" name=\"regions\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5\">";
    //create rows
    while($row = mysqli_fetch_array($result)){
      echo "<option value =" . $row['rID'] . ">" . $row['rname'] . "</option>";
    }
    echo"</select> <br><br>";
    echo "<div class=\"flex flex-col jusify-center items-center\">
    <input type=\"submit\" name=\"submit\" value=\"Submit\" class=\"py-2 px-4 m-2 text-sm font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\"></input>
    </div></div></form>";
?>
</div>




@endsection
