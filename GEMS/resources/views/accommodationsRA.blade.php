@extends('Layouts.RA-default')
@section('main')
<body>
<?php if (true) : ?>

<br>
<br>

<div class = "flex flex-col justify-center items-center">
  <table class = "table-fixed border bordor-slate-500">
    <tr class = "border border-slate-500">
      <th class = "border border-slate-500 border-r-0">Location</th>
      <th class = "bordor bordor-slate-500 border-x-0"></th>
      <th class = "border border-slate-500 border">Capacity</th>
      <th class = "border border-slate-500 p-2"></th>
      <th class = "border border-slate-500 p-2"></th>
    </tr>
    <tr class = "border border-slate-500">
      <td class = "border border-slate-500 p-2 border-r-0" height=100 width=100><img src="https://ok.ubc.ca/wp-content/uploads/sites/26/2018/02/unc-opens-2009-history.jpg" alt="accommodation"></td>
      <td class = "border border-slate-500 p-2 border-x-0">UNC</td>
      <td class = "border border-slate-500 p-2">0 people</td>
      <td class = "border border-slate-500 p-2">
      <div class="inline-flex rounded-md shadow-sm" role="group">
        <button type="button" onclick="location.href='/view-accommodationRA_UNC';" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white">View/Update</button>
      </div></td>
      <td class = "border border-slate-500 p-2">
      <div class="inline-flex rounded-md shadow-sm" role="group">
        <button type="button" onclick="location.href='/Booking';" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white">Book Now</button>
      </div></td>
    </tr>
    <tr>
      <td class = "border border-slate-500 p-2 border-r-0" height=100 width=100><img src="https://ok.ubc.ca/wp-content/uploads/sites/26/2018/02/unc-opens-2009-history.jpg" alt="accommodation"></td>
      <td class = "border border-slate-500 p-2 border-x-0">City Hall</td>
      <td class = "border border-slate-500 p-2">50 people</td>
      <td class = "border border-slate-500 p-2">
      <div class="inline-flex rounded-md shadow-sm" role="group">
        <button type="button" onclick="location.href='/view-accommodationRA_CITYHALL';" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white">View/Update</button>
      </div></td>
      <td class = "border border-slate-500 p-2">
      <div class="inline-flex rounded-md shadow-sm" role="group">
        <button type="button" onclick="location.href='/Booking';" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white">Book Now</button>
      </div></td>
    </tr>
  </table>
</div>

<br>
<br>

<div class="flex flex-col justify-center items-center">
        <button type="button" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">
        <a href="{{route('New-Accommodation-RA')}}">
        New Accommodation
        </a>
        </button>

    </div>



<?php elseif (false) : ?>
  YOU DO NO HAVE PERMISSION TO VIEW THIS PAGE
<?php endif; ?>
</body>
@endsection