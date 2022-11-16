@extends('Layouts.default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>
<body>
<div class = "flex flex-col justify-center items-center">
  <b>
  This is a test. Accommodations will not be accessed from the homepage directly.
  </b>
  </br>
</div>

<!-- Below if statement will check if user is RA -->

  <?php if (true) : ?>
    <div class="container flex flex-col justify-center items-center">
      <a href="/New">
      <button type="button" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">New Accommodation</button>
      </a>
    </div>
  <?php endif; ?>


</br>

<div class = "flex flex-col justify-center items-center">
  <table>
    <tr>
      <th id="imgColumn">Location</th>
      <th id="locColumn"></th>
      <th id="capColumn">Capacity</th>
      <th>TODO: Buttons should be added automatically</th>
    </tr>
    <tr>
      <td id="imgColumn" height=100 width=100><img src="https://ok.ubc.ca/wp-content/uploads/sites/26/2018/02/unc-opens-2009-history.jpg" alt="accommodation"></td>
      <td id="locColumn">UNC</td>
      <td id="capColumn">10 people</td>
      <td id="buttonColumn">
        <div class="inline-flex rounded-md shadow-sm" role="group">
        <button type="button" onclick="location.href='/View-Accommodation';" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white">View</button>
        </div></td>
    </tr>
    <tr>
      <td id="imgColumn" height=100 width=100><img src="https://ok.ubc.ca/wp-content/uploads/sites/26/2018/02/unc-opens-2009-history.jpg" alt="accommodation"></td>
      <td id="locColumn">City Hall</td>
      <td id="capColumn">20 people</td>
      <td id="buttonColumn">
      <div class="inline-flex rounded-md shadow-sm" role="group">
        <button type="button" onclick="location.href='/View-Accommodation';" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white">View</button>
      </div></td>
    </tr>
  </table>
</div>
</body>
@endsection