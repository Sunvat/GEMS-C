@extends('Layouts.RA-default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>
<body>
<b>
This is a test. Accommodations will not be accessed from the homepage directly.</br>
TODO: Create function to change page after submitting. /action_page.php should be replaced with an actual function
</b></br></br>
<div class="container py-10 px-10 mx-0 min-w-full grid place-items-center" id = "container">
<form action="/action_page.php" method="get" id="updateForm">
  <label for="locName">Location Name:</label><br>
  <input type="text" id="locName" name="locName" value="Placeholder"><br>
  <label for="maxCap">Maximum Capacity:</label><br>
  <input type="text" id="maxCap" name="maxCap" value="100"><br>
  <label for="popChange">Net Change in Occupancy:</label><br>
  <input type="text" id="popChange" name="popChange" value="0"><br>
  <label for="desc">Description:</label><br>
  <input type="text" id="desc" name="desc" value="Placeholder"><br><br>
</form>
  <div class = "flex flex-col justify-center items-center">
      <button class="font-bold text-slate-700 bg-Glohaven-Orange rounded-full">
          <a href ="{{route('Accommodation_update_submitted')}}" >Submit</a>
      </button><br>
  </div>


</body>
@endsection