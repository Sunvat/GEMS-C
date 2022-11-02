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
<div class="container py-10 px-10 mx-0 min-w-full grid place-items-center" id = "container">
<form action="/action_page.php" method="get" id="updateForm">
  <label for="locName">Location Name:</label><br>
  <input type="text" id="locName" name="locName" value="Placeholder"><br>
  <label for="maxCap">Maximum Capacity:</label><br>
  <input type="text" id="maxCap" name="maxCap" value="100"><br>
  <label for="desc">Description:</label><br>
  <input type="text" id="desc" name="desc" value="Placeholder"><br><br>
</form>
<button type="submit" form="updateForm" value="Submit" onclick="location.href='/View-Accommodation';" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">Submit</button>
</div>

</body>
@endsection