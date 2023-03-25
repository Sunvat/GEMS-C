@extends('Layouts.RA-default')
@section('main')
<body>
<?php if (true) : ?>

<br><br>

<div class="flex flex-col justify-center items-center">
  <div class = "flex flex-row justify-center items-center">
        <button type="button" class= "focus:outline-none text-black bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2">
        <a href="{{route('New-Accommodation-RA')}}">New Accommodation</a>
        </button>

        <button type="button" class= "focus:outline-none text-black bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2">
        <a href="{{route('RA-Bookings')}}">Waiting List</a>
        </button>
  </div>
</div>

<div id = "searchBar" class = "flex flex-col justify-center items-center center">
  <input type="text" onkeyup="searchAccount()" id="search" name="search" placeholder="Search..." class="bg-gray-700 border border-gray-600 text-black text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-1/3 p-2.5"><br>
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

<br>

<?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';

$filtered;
try{
  $filtered = $_GET["filtered"];
  $filter = array(htmlentities($_GET['wca']), htmlentities($_GET['pets']), htmlentities($_GET['med']),
  htmlentities($_GET['beds']), htmlentities($_GET['high']), htmlentities($_GET['food']), htmlentities($_GET['water']),
  htmlentities($_GET['full']));
}
catch(exception){
  $filtered = false;
}
$rID = $_GET["rID"];

if (!$filtered){
  $result = getAllAcc($rID);
}
else {
  $result = getFilteredAcc($rID, $filter);
}

echo "<div class = \"flex flex-col justify-center items-center\">
  <table class = \"table-fixed border bordor-slate-500 border-r-0\">
  <tr class = \"border border-slate-500\">
        <th class = \"border border-slate-500 border-r-0\">Location</th>
        <th class = \"bordor bordor-slate-500 border-x-0\"></th>
        <th class = \"border border-slate-500 border\">Capacity</th>
        <th class = \"border border-slate-500 p-2 border-r-0\"></th>
        <th class = \"border border-slate-500 p-2 border-x-0\"></th>
        <th class = \"border border-slate-500 p-2 align-top\" id = \"filterCol\" rowspan = \"100%\">
          <div class=\"container px-10 mx-0 min-w-full grid place-items-top\" id = \"container\">

          <form action=\"\" method=\"get\" id=\"newForm\">
          <fieldset>
              <legend>Filters</legend>
          <input type=\"hidden\" id=\"wca\" name=\"wca\" value=\"false\" />
          <input type=\"hidden\" id=\"pets\" name=\"pets\" value=\"false\" />
          <input type=\"hidden\" id=\"med\" name=\"med\" value=\"false\" />
          <input type=\"hidden\" id=\"beds\" name=\"beds\" value=\"false\" />
          <input type=\"hidden\" id=\"high\" name=\"high\" value=\"false\" />
          <input type=\"hidden\" id=\"food\" name=\"food\" value=\"false\" />
          <input type=\"hidden\" id=\"water\" name=\"water\" value=\"false\" />
          <input type=\"hidden\" id=\"full\" name=\"full\" value=\"false\" />
          <input type=\"hidden\" id=\"rID\" name=\"rID\" value=\"$rID\" />
          <input type=\"hidden\" id=\"filtered\" name=\"filtered\" value=\"true\" />

          <label for=\"wca\" class=\"font-medium text-black\">Wheelchair Access</label>
          <input type=\"checkbox\" id=\"wca\" name=\"wca\" value=\"true\"><br>
          <label for=\"pets\" class=\"font-medium text-black\">Allows Pets</label>
          <input type=\"checkbox\" id=\"pets\" name=\"pets\" value=\"true\"><br>
          <label for=\"med\" class=\"font-medium text-black\">Medicine Available</label>
          <input type=\"checkbox\" id=\"med\"  name=\"med\" value=\"true\"><br>
          <label for=\"beds\" class=\"font-medium text-black\">Beds Available</label>
          <input type=\"checkbox\" id=\"beds\" name=\"beds\" value=\"true\"><br>
          <label for=\"high\" class=\"font-medium text-black\">On High Ground</label>
          <input type=\"checkbox\" id=\"high\" name=\"high\" value=\"true\"><br>
          <label for=\"food\" class=\"font-medium text-black\">Food Provided</label>
          <input type=\"checkbox\" id=\"food\" name=\"food\" value=\"true\"><br>
          <label for=\"water\" class=\"font-medium text-black\">Water Provided</label>
          <input type=\"checkbox\" id=\"water\" name=\"water\" value=\"true\"><br>
          <label for=\"full\" class=\"font-medium text-black\">Include Full</label>
          <input type=\"checkbox\" id=\"full\" name=\"full\" value=\"true\" checked=\"true\"><br><br>
          <div class=\"flex flex-col jusify-center items-center\">
          <input type=\"submit\" name=\"submit\" value=\"Submit\" class=\"py-2 px-4 text-sm font-medium text-black bg-Dgreen rounded-lg border-2 border-gold hover:bg-Lgreen\"></input>
          </div>
          </fieldset></form></div>
        </th>
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
  echo "<td class = \"border border-slate-500 p-2 border-r-0\">";
  echo "<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
          <button type=\"button\" onclick=\"location.href='/view-accommodationRA?ID=". $row['accID'] ."';\" class=\"py-2 px-4 text-sm font-medium text-black bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-black focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange\">View/Update</button>
        </div></td>";
  echo "<td class = \"border border-slate-500 p-2 border-l-0\">
  <div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
  <button type=\"button\" name = \"bookNow\" id=\"bookNow\" onclick=\"location.href='/RA-Booking?accID=". $row['accID'] . "&rID=$rID ';\" class=\"py-2 px-4 text-sm font-medium text-black bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-black focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange\">Book Now</button>
  </div></td>";
  echo "</tr>";
  }
  echo "</table>
  </div>";
?>

<div class="container flex flex-col justify-center items-center">
  <h3>Don't see what you want?</h3><p>Submit a wishlist request and get notified when something open up!</p>
  <?php echo "<a href=\"/RA-wishlist?rID=$rID\">";?>
    <button type="button" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2">Wislist Request</button>
  </a>
</div>

<?php elseif (false) : ?>
  YOU DO NO HAVE PERMISSION TO VIEW THIS PAGE
<?php endif; ?>
</body>
@endsection