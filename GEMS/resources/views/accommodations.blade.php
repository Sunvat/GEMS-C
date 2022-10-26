@extends('Layouts.default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>
<body>
<b>
This is a test. Accommodations will not be accessed from the homepage directly.
</b></br>

#Below if statement will check if user is RA
<?php if (true) : ?>
  <div class="container">
        <a href="/New">
            <span id="create-accommodation-button"
            style="background-color:#EC925D;color:#FFFFFF;padding-left:5px;padding-right:5px;">
            New Accommodation</span>
        </a>
    </div>
<?php endif; ?>
</br>
TODO: This should be auto populated once we have a database set up
<table>
  <tr>
    <th id="locColumn">Location</th>
    <th id="capColumn">Capacity</th>
    <th>TODO: Buttons should be added automatically</th>
  </tr>
  <tr>
    <td id="locColumn">UNC</td>
    <td id="capColumn">10 people</td>
    <td id="buttonColumn"><a href="/View-Accommodation">
        <button type="button" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">View</button>
      </a></td>
  </tr>
  <tr>
    <td id="locColumn">City Hall</td>
    <td id="capColumn">20 people</td>
    <td id="buttonColumn"><a href="/View-Accommodation">
      <button type="button" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">View</button>
      </a></td>
  </tr>
</table>

</body>
@endsection