@extends('Layouts.RA-default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>
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
<form action="/action_page.php" method="get" id="updateForm">
  <label for="RegionName" class="mx-2 font-bold text-slate-700">Region Name:</label><br>
  <input type="text" id="locName" name="locName" placeholder="Okanagan" class="rounded p-2"><br>
  <label for="Province" class="mx-2 font-bold text-slate-700">Province:</label><br>
  <input type="text" id="maxCap" name="maxCap" placeholder="e.g. 500" class="rounded p-2"><br>
  <label for="HandlerRA" class="mx-2 font-bold text-slate-700">Under Jurisdiction of:</label><br>
  <input type="text" id="desc" name="desc" placeholder="RA Name" class="rounded p-2"><br>
  <label for="HandlerRA_ID" class="mx-2 font-bold text-slate-700">I.D Number:</label><br>
  <input type="text" id="desc" name="desc" placeholder="RA I.D Number" class="rounded p-2"><br><br>
</form>


<button type="submit" form="updateForm" value="Submit" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white">
    <a href = "{{route('Region-Created')}}">Submit</a>
</button>

</div>

</body>
@endsection