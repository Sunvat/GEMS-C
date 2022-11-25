@extends('Layouts.default')
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
<div class="container py-10 px-10 mx-0 min-w-full grid place-items-center" id = "container">
<form action="/action_page.php" method="get" id="updateForm">
  <label for="locName" class="mx-2 font-bold text-slate-700">Location Name:</label><br>
  <input type="text" id="locName" name="locName" placeholder="UBC,Gymnasium"><br>
  <label for="maxCap" class="mx-2 font-bold text-slate-700">Maximum Capacity:</label><br>
  <input type="text" id="maxCap" name="maxCap" placeholder="e.g. 500"><br>
  <label for="desc" class="mx-2 font-bold text-slate-700">Description:</label><br>
  <input type="text" id="desc" name="desc" placeholder=""><br><br>
</form>

<button type="submit" form="updateForm" value="Submit" onclick="location.href='/View-Accommodation';" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">Submit

</button>
<button type="submit" value="Submit" class="mt-8 py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white">
<a href="{{route('Home')}}">Log Out</a>
</button>
</div>

</body>
@endsection