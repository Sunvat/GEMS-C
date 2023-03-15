@extends('Layouts.RA-default')
@section('main')
<?php
$loc = $_GET["location"];

if( isset($_GET['submit']) )
{
    require_once dirname(__DIR__, 3).'/database/updateFuncs.php';

    $newUpdate = array(htmlentities($_GET['location']), htmlentities($_GET['Update']), htmlentities($_GET['datetime']), htmlentities($loc));

    updateLEI($newUpdate);
    header('Location: /RA-LEI');
    die();
}
?>

<body>
<br>

<div class = "flex flex-col justify-center items-center">
  <div class = "p-1 bg-Glohaven-Orange rounded-md">
    <h1 class = "text-4xl">Update</h1>
  </div> 
</div>
<?php
  require_once dirname(__DIR__, 3).'/database/selectFuncs.php';

  $LEI = getLEIandID();
  $LEI = mysqli_fetch_array($LEI);

  echo "<div class=\"flex flex-col justify-center items-center container py-10 px-10 mx-0 min-w-full\" id = \"container\">";
  echo "<form action=\"\" method=\"get\" id=\"updateForm\">";

  echo "<label for=\"rname\" class=\"mx-2 font-bold\">Location:</label><br>";
  echo "<input type=\"text\" id=\"location\" name=\"location\" value=" . $loc . " \" class = \"rounded bg-slate-200\"><br>";
  
  echo "<label for=\"country\" class=\"mx-2 font-bold\">Information/Update:</label><br>";
 
  echo "<h1>Previous Text:</h1>";
  echo "<h1>" .$LEI["lei"]. "</h1>";
 
  echo " <textarea id = \"Update\" name = \"Update\" form = \"updateForm\" cols = 25 rows=5 class = \"bg-slate-200\"></textarea><br>";

  echo "<label for=\"provState\" class=\"mx-2 font-bold\">Datetime:</label><br>";
  echo "<input type=\"text\" id=\"datetime\" name=\"datetime\" value = ". $LEI["datetime"]. " \"class=\"rounded p-2\"><br>";
    
  echo "<br>";

  echo "<div class=\"md:flex md:items-center\">";

  echo "<div class=\"md:w-1/3\">";
  echo "</div>";

  echo "<div class=\"md:w-2/3\">";
  echo "<input type=\"submit\" name=\"submit\" value=\"submit\" class=\"py-2 px-4 text-sm font-medium text-black bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-black focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange\"></input>";
  echo "</div>";
  echo "</div>";
  echo "</form>";
  
?>
</body>

@endsection