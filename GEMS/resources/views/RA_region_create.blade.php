@extends('Layouts.RA-default')
@section('main')
<!--This page will be used to create regions -->
<?php
//when submit is clicked get region infor and insert into database.
//also get contact info and submit into database.
if( isset($_GET['submit']) )
{
    require dirname(__DIR__, 3).'/database/insertFuncs.php';
    require dirname(__DIR__, 3).'/database/selectFuncs.php';

    $newRegion = array(htmlentities($_GET['rname']), htmlentities($_GET['country']), htmlentities($_GET['provState']));
    InsertRegion($newRegion); // region infor to database

    $id = getRegionID(htmlentities($_GET['rname']), htmlentities($_GET['country']), htmlentities($_GET['provState'])); //ID needed to for contact insertion
    
    InsertContact($id, htmlentities($_GET['pNumber']));// get contact and insert into database

    header('Location: /RA_region');
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
    <h1 class = "text-4xl">Create Region:</h1>
  </div> 
</div>

<div class="container py-10 px-10 mx-0 min-w-full grid place-items-center" id = "container">
  <!--Form used to input region info and contact number -->
<form action="" method="get" id="updateForm">

  <label for="rname" class="mx-2 font-bold text-slate-700">Region Name:</label><br>
  <input type="text" id="rname" name="rname" placeholder="Okanagan" class="rounded p-2"><br>

  <label for="country" class="mx-2 font-bold text-slate-700">Country:</label><br>
  <input type="text" id="country" name="country" placeholder="Canada" class="rounded p-2"><br>

  <label for="provState" class="mx-2 font-bold text-slate-700">Province:</label><br>
  <input type="text" id="provState" name="provState" placeholder="BC" class="rounded p-2"><br>

  <label for="provState" class="mx-2 font-bold text-slate-700">Phone Number</label><br>
  <input type="text" id ="pNumber" name = "pNumber" placeholder = "xxx-xxx-xxxx" class = "rounded p-2"><br>

 <br>
 <div class="md:flex md:items-center">
    <div class="md:w-1/3">
    </div>
    <div class="md:w-2/3">
      <input type="submit" name="submit" value="submit" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white"></input>
    </div>
</form>

</div>
</body>
@endsection