@extends('Layouts.RA-default')

@section('main')
<?php
if( isset($_GET['submit']) )
{
    $rID = htmlentities($_GET['regions']);

    header('Location: /RA-Bookings?rID=' . $rID);
    die();
}
?>

<br><br>
<div class = "flex flex-col justify-center items-center">
    <h1 class = "p-2 text-4xl text-black bg-Dgreen rounded-lg border-2 border-gold hover:bg-Lgreen">Select Region</h1>
</div>

<div class = "flex flex-col jusify-center items-center">
  <form id="ChooseRegion">
    <br>
    
    <?php
    require dirname(__DIR__, 3).'/database/selectFuncs.php';

    $result = getRegionAndID();

    echo "<form action=\"\" method=\"get\" id=\"regForm\">";
    echo "<label for=\"chooseRegion\" class=\"block mb-2 text-large font-medium text-Lgreen\">Select a region to local booking requests:</label>";
    echo "<select id=\"regions\" name=\"regions\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5\">";
  
    while($row = mysqli_fetch_array($result)){
      echo "<option value =" . $row['rID'] . ">" . $row['rname'] . "</option>";
    }
    echo"</select><br>";
    echo "<div class=\"flex flex-col jusify-center items-center\">
    <input type=\"submit\" name=\"submit\" value=\"Submit\" class=\"py-2 px-4 text-sm font-medium text-black bg-Dgreen rounded-lg border-2 border-gold hover:bg-Lgreen\"></input>
    </div></div>";
?>

    <br>

  <div class = "flex flex-col jusify-center items-center">
    <button type="submit" value="Submit" class="mt-8 py-2 px-2 text-sm font-medium text-black bg-Dgreen rounded-lg border-2 border-gold hover:bg-Lgreen hover:text-black ">
      <a href="{{route('RA_region_create')}}">Create Region</a>
    </button>
  </div>

  </form>
@endsection
