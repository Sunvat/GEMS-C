@extends('Layouts.default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>
<body>
<b>
Logged in as RA.
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
<button type="submit" value="Submit" class="mt-8 py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white">
<a href="{{route('Home')}}">Log Out</a>
</button>
</div>

</body>
@endsection