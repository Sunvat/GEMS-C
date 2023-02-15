@extends('Layouts.default')
@section('main')
<br><br>

<div id = "searchBar" class = "flex flex-col justify-center items-center center">
  <input type="text" onkeyup="searchAccount()" id="search" name="search" placeholder="Search..." class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-1/3 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"><br>
  <script>
    //Bad practice, but laravel will not let us simply include a js file in HTML
    function searchAccount(){
      let input = document.getElementById('search').value
      input=input.toLowerCase();
      let x = document.getElementsByClassName('accRow');
        
      for (i = 0; i < x.length; i++) { 
          if (!x[i].id.toLowerCase().includes(input)) {
              x[i].style.display="none";
          }
          else {
              x[i].style.display="revert";                 
          }
      }
    } </script>
</div>

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
echo "<tr id=\"" . $row['aname'] . "\" class=\"accRow\">";
echo "<td class = \"border border-slate-500 p-2 border-r-0\" height=100 width=100><img src=\"". $row['image'] ."\" alt=\"accommodation\"></td>";
echo "<td class = \"border border-slate-500 p-2 border-x-0\">" . $row['aname'] . "</td>";
if ($row['isFull'] == true) {
  echo "<td class = \"border border-slate-500 p-2 font-bold text-red-600\">FULL</td>";
} else {
  echo "<td class = \"border border-slate-500 p-2\">" . $row['openSpace'] . " People </td>";
}
echo "<td class = \"border border-slate-500 p-2\">";
echo "<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
        <button type=\"button\" onclick=\"location.href='/view-accommodation?ID=". $row['accID'] ."';\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white\">View</button>
      </div></td>";
echo "<td class = \"border border-slate-500 p-2\">
<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
  <button type=\"button\" name = \"bookNow\" id=\"bookNow\" onclick=\"location.href='/Booking?accID=". $row['accID'] . "&aname=" . $row['aname'] ." ';\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white\">Book Now</button>
</div></td>";
echo "</tr>";
}
echo "</table>
</div>";

?>

</br></br>

<!-- Below if statement will check if user is RA -->

  <?php if (false) : ?>
    <div class="container flex flex-col justify-center items-center">
      <a href="/New">
      <button type="button" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">New Accommodation</button>
      </a>
    </div>
  <?php endif; ?>

</br>

@endsection