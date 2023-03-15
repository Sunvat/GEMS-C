@extends('Layouts.RA-default')
@section('main')
<head>
  <link rel="stylesheet" href="app.css">
</head>
<body>
<b>
This page should only be available to RAs
</b>
<br>

<div class="container py-10 px-10 mx-0 min-w-full grid place-items-center" id = "container">
<form action="/action_page.php" method="get" id="updateForm">
  <label for="locName" class="mx-2 font-bold text-slate-700">Location Name:</label><br>
  <input type="text" id="locName" name="locName" placeholder="UBC,Gymnasium"><br>
  <label for="maxCap" class="mx-2 font-bold text-slate-700">Maximum Capacity:</label><br>
  <input type="text" id="maxCap" name="maxCap" placeholder="e.g. 500"><br>
  <label for="desc" class="mx-2 font-bold text-slate-700">Description:</label><br>
  <input type="text" id="desc" name="desc" placeholder=""><br><br>
</form>
<button type="submit" form="updateForm" value="Submit" onclick="location.href='/View-Accommodation';" class="focus:outline-none text-black bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">Submit</button>
</div>

</body>
@endsection