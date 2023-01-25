@extends('Layouts.RA-default')

@section('main')
<?php
$rID = $_GET["rID"];
?>

<?php
if( isset($_GET['submit']) )
{
    require dirname(__DIR__, 3).'/database/insertFuncs.php';

    $LEI = array(htmlentities($_GET['rID']), htmlentities($_GET['Location']), htmlentities($_GET['Update']), htmlentities($_GET["DateTime"]));

    InsertLEI($LEI);
    header('Location: /RA-Latest-Update');
    die();
}
?>
<div class="container py-10 px-150 mx-0 min-w-full grid place-items-center" id = "container">
<form action="" method="get" id="updateForm">

  <?php
    echo "<input type=\"hidden\" id = \"rID\" name = \"rID\" value = \"$rID\">";
  ?>

  <label for="Location" class="mx-2 font-bold text-slate-700">Location Name:</label><br>
  <input type="text" id="Location" name="Location" placeholder="Kelowna" class="rounded p-2"><br>

  <label for="Update" class="mx-2 font-bold text-slate-700">Update:</label><br>
  <textarea id = "Update" name = "Update" form = "updateForm" cols = 25 rows=5></textarea><br>

  <label for="DateTime" class="mx-2 font-bold text-slate-700">Province:</label><br>
  <input type=DateTime" id="DateTime" name="DateTime" placeholder="yyyy-mm-dd" class="rounded p-2"><br>

 <br>
 <div class="md:flex md:items-center">
    <div class="md:w-1/3">
    </div>
    <div class="md:w-2/3">
      <input type="submit" name="submit" value="submit" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange"></input>
    </div>
</form>


@endsection