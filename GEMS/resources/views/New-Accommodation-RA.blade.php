@extends('Layouts.RA-default')
@section('main')
<?php
if( isset($_GET['submit']) )
{
    require dirname(__DIR__, 3).'/database/insertFuncs.php';

    $newAccommodation = array(htmlentities($_GET['locName']), htmlentities($_GET['reg']), htmlentities($_GET['country']), htmlentities($_GET['address']), htmlentities($_GET['maxCap']));

    insertAcc($newAccommodation);
    header('Location: /RA-Accommodations');
    die();
}
?>

<body>
<b>
This page should only be available to RAs
</b>
<br>
<b>
Logged in as RA.
</b>

<div class = "flex flex-col justify-center items-center">
  <div class = "p-1 bg-Glohaven-Orange rounded-md">
    <h1 class = "text-4xl">New Accommodation:</h1>
  </div> 
</div>

<div class="container py-10 px-10 mx-0 min-w-full grid place-items-center" id = "container">
<form action="" method="get" id="updateForm">
  <label for="RegionName" class="mx-2 font-bold text-slate-700">Accommodation Name:</label><br>
  <input type="text" id="locName" name="locName" placeholder="e.g UBC Campus" class="rounded p-2"><br>
  <label for="Province" class="mx-2 font-bold text-slate-700">Region:</label><br>
  <input type="text" id="reg" name="reg" placeholder="e.g Okanagan" class="rounded p-2"><br>
  <label for="Province" class="mx-2 font-bold text-slate-700">Country:</label><br>
  <input type="text" id="country" name="country" placeholder="e.g Canada" class="rounded p-2"><br>
  <label for="HandlerRA" class="mx-2 font-bold text-slate-700">Address:</label><br>
  <input type="text" id="address" name="address" placeholder="e.g 755 Academy Way, Kelowna, BC" class="rounded p-2"><br>
  <label for="HandlerRA_ID" class="mx-2 font-bold text-slate-700">Total Capacity:</label><br>
  <input type="text" id="maxCap" name="maxCap" placeholder="e.g 500" class="rounded p-2"><br><br>
  <div class="md:flex md:items-center">
    <div class="md:w-1/3"></div>
    <div class="md:w-2/3">
    <input type="submit" name="submit" value="Submit" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white"></input>
  </div></div>
</form>

</div>

</body>
@endsection