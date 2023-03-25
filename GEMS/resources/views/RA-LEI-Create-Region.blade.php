@extends('Layouts.RA-default')

@section('main')

<body>
<br>
<div class = "flex flex-col justify-center items-center">
  <div class = "p-1 bg-Glohaven-Orange rounded-md">
    <h1 class = "text-4xl">Select Region</h1>
  </div> 
</div>

<div class = "flex flex-col jusify-center items-center">
    <br>
    
    <?php
    require dirname(__DIR__, 3).'/database/selectFuncs.php';

    $result = getRegionAndID();

    echo "<label for=\"chooseRegion\" class=\"block mb-2 text-large font-medium text-grey \">Select a region to browse available accommodations in that region:</label>";
    echo "<form action = \"\" method = \"get\">";
    echo "<select name = \"dropdown\" id=\"dropdown\" class=\"bg-gray-700 border border-gray-600 text-black text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5\">";

    while($row = mysqli_fetch_array($result)){
      echo "<option value =" . htmlspecialchars($row['rID'], ENT_QUOTES, 'UTF-8') . ">" . htmlspecialchars($row['rID'], ENT_QUOTES, 'UTF-8') .": ". htmlspecialchars($row['rname'], ENT_QUOTES, 'UTF-8') . "</option>";
    }
    echo"</select>";
    echo "<br>";
    echo "<div class = \"flex flex-col jusify-center items-center\">";
    echo "  <input type=\"submit\" value = \"Submit\" name=\"Submit\" class = \"py-2 px-4 text-sm font-medium text-black bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-black focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange\">";
    echo "</div>";
    echo"</form>";
    ?>
</div>
    <br>
    <br>

</body>

<?php
if(isset($_GET['dropdown'])) {
  $selected = $_GET['dropdown'];
 
  header("location: /RA-LEI-Create-Info?rID=$selected");
  exit();
}
?>


@endsection