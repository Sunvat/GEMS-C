@extends('Layouts.RA-default')
@section('main')
<body>
<?php if (true) : ?>

<br>

<div class="flex flex-col justify-center items-center">
  <div class = "flex flex-row justify-center items-center">
        <button type="button" class= "focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">
        <a href="{{route('New-Accommodation-RA')}}">New Accommodation</a>
        </button>

        <button type="button" class= "focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">
        <a href="{{route('WaitingList')}}">Waiting List</a>
        </button>
  </div>
</div>

<br>

<?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';

$rID = $_GET["rID"];
$result = getAllAcc($rID);

echo "<div class = \"flex flex-col justify-center items-center\">
<table class = \"table-fixed border bordor-slate-500\">
<tr class = \"border border-slate-500\">
      <th class = \"border border-slate-500 border-r-0\">Location</th>
      <th class = \"bordor bordor-slate-500 border-x-0\"></th>
      <th class = \"border border-slate-500 border\">Capacity</th>
      <th class = \"border border-slate-500 p-2\"></th>
      <th class = \"border border-slate-500 p-2\"></th>
    </tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr id=\"" . $row['aname'] . "\">";
echo "<td class = \"border border-slate-500 p-2 border-r-0\" height=100 width=100><img src=\"". $row['image'] ."\" alt=\"accommodation\"></td>";
echo "<td class = \"border border-slate-500 p-2 border-x-0\">" . $row['aname'] . "</td>";
if ($row['isFull'] == true) {
  echo "<td class = \"border border-slate-500 p-2 font-bold text-red-600\">FULL</td>";
} else {
  echo "<td class = \"border border-slate-500 p-2\">" . $row['openSpace'] . " People </td>";
}
echo "<td class = \"border border-slate-500 p-2\">";
echo "<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
        <button type=\"button\" onclick=\"location.href='/view-accommodationRA?ID=". $row['accID'] ."';\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white\">View/Update</button>
      </div></td>";
echo "<td class = \"border border-slate-500 p-2\">
<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
<button type=\"button\" name = \"bookNow\" id=\"bookNow\" onclick=\"location.href='/RA-Booking?accID=". $row['accID'] . "&aname=" . $row['aname'] ." ';\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white\">Book Now</button>
</div></td>";
echo "</tr>";
}
echo "</table>
</div>";

?>
<?php elseif (false) : ?>
  YOU DO NO HAVE PERMISSION TO VIEW THIS PAGE
<?php endif; ?>
</body>
@endsection