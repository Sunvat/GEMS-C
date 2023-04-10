@extends('Layouts.RA-default')

@section('main')
  <header>

  <script>
    //Helper page to decline bookings
    function decline(bookingID, rID) {
      //Redirects to a page that runs the PHP confirmDeclineBooking function on the accommodation with the ID.
      window.location.href = "/RA-declineBooking?bookingID="+bookingID+"&rID="+rID;
}

    //Helper page to approve bookings
    function approve(bookingID, rID) {
      //Redirects to a page that runs the PHP confirmDeclineBooking function on the accommodation with the ID.
      window.location.href = "/RA-ApproveBooking?bookingID="+bookingID+"&rID="+rID;
}
    //Helper page to decline wishes
    function declineWish(wID, rID) {
        var r = confirm("Are you sure you want to delete this request?");
        //This is a very roundabout way of deleting things. Look into AJAX.
        if (r == true) {
          //Redirects to a page that runs the PHP delete function on the accommodation with the ID.
          window.location.href = "/RA-declineWish?wishID="+wID+"&rID="+rID;
        }
        else {
          //Do nothing
        }
    }

    function endStay(accID, bID, rID) {
        var r = confirm("Are you sure this group's stay is over?");
        //This is a very roundabout way of deleting things. Look into AJAX.
        if (r == true) {
          //Redirects to a page that runs the PHP delete function on the accommodation with the ID.
          window.location.href = "/RA-endStay?accID="+accID+"&bID="+bID+"&rID="+rID;
        }
        else {
          //Do nothing
        }
    }

    //These functions hide the tables
  window.addEventListener('DOMContentLoaded', () => {
    console.log('DOM fully loaded and parsed');
    document.getElementById("pending").addEventListener('click', function (event) {
      var table = document.getElementById("pendingTable");
      if (table.style.display === "none"){
        table.style.display = "block";
      }else{
        table.style.display = "none";
      }
    });

    document.getElementById("confirmed").addEventListener('click', function (event) {
      var table = document.getElementById("confirmedTable")
      if (table.style.display === "none"){
        table.style.display = "block";
      }else{
        table.style.display = "none";
      }
    });

    document.getElementById("declined").addEventListener('click', function (event) {
      var table = document.getElementById("declinedTable")
      if (table.style.display === "none"){
        table.style.display = "block";
      }else{
        table.style.display = "none";
      }
    });

    document.getElementById("wishList").addEventListener('click', function (event) {
      var table = document.getElementById("wishTable")
      if (table.style.display === "none"){
        table.style.display = "block";
      }else{
        table.style.display = "none";
      }
    });
  });
</script>

<?php
//When the submit button is clicked, move the wish into bookings
if( isset($_GET['submit']) )
{
    require_once dirname(__DIR__, 3).'/database/updateFuncs.php';
    $wish = array(htmlentities($_GET['wID']), htmlentities($_GET['chooseAcc']));

    confirmWish($wish);

    header("Location: /RA-Bookings?rID=".$_GET['rID']);
    exit();
}
?>

</header>

<body>
    
<br>

<?php
require_once dirname(__DIR__, 3).'/database/selectFuncs.php';
$rID = $_GET["rID"];

//SHOULD USE AN rID FROM USER ONCE ACCOUNTS ARE SET UP
//Get pending bookings
$result = getPendingBookings($rID);


echo "<div class = \"flex flex-col justify-center items-center ml-96\">
<div class = \"flex flex-col justify-center items-center\">
    <h3 id=\"pending\" class = \"py-2 px-4 m-2 text-2xl font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\">Pending Bookings</h3>
</div><br>

<table id=\"pendingTable\" class = \"table-fixed border mx-10 border-none\">
    <tr class = \"bordor-slate-500 p-2\">
      <th class = \"border\">Booking ID</th>
      <th class = \"border\">Primary Evacuee Name</th>
      <th class = \"border\">Primary Evacuee Phone</th>
      <th class = \"border\">Number of People</th>
      <th class = \"border\">Accommodation Name</th>
      <th class = \"border\">Region</th>
      <th class = \"border\">Caller Name</th>
      <th class = \"border\">Caller E.M.S Number</th> 
      <th class = \"border\">Caller Contact Number</th>
      <th></th>
    </tr>";


while($row = mysqli_fetch_array($result))
{
echo "<tr class = \"bordor-slate-500 p-2\">";
echo "<td class = \"border p-2\">" . $row['bookingID'] . "</td>";
echo "<td class = \"border p-2\">" . $row['evacPrimaryName'] . "</td>";
echo "<td class = \"border p-2\">" . $row['evacPhoneNumber'] . "</td>";
echo "<td class = \"border p-2\">" . $row['NumPeople'] . "</td>";
echo "<td class = \"border p-2\">"   . $row['aname'] . "</td>";
echo "<td class = \"border p-2\">"   . $row['rname'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerName'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerID'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerPhoneNumber'] . "</td>";

echo "<td class = \"border-none\">";
echo "<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
        <button type=\"button\" onclick=\"approve(".$row['bookingID'].",".$rID.")\" class=\"py-2 px-4 text-sm font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\">Approve</button>
      </div></td>";
echo "<td class = \"border-none\">
<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
  <button type=\"button\" onclick=\"decline(".$row['bookingID'].",".$rID.")\" class=\"py-2 px-4 text-sm font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\">Decline</button>
</div></td>";
echo "</tr>";
}
echo "</table>
</div><br>";


//Confirmed Table
$result = getConfirmedBookings($rID);


echo "<div class = \"flex flex-col justify-center items-center ml-96\">
<div class = \"flex flex-col justify-center items-center\">
    <h3 id=\"confirmed\" class = \"py-2 px-4 m-2 text-2xl font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\">Approved Bookings</h3>
</div><br>

<table id=\"confirmedTable\" class = \"table-fixed border mx-10 border-none\">
    <tr class = \"bordor-slate-500 p-2\">
      <th class = \"border\">Booking ID</th>
      <th class = \"border\">Primary Evacuee Name</th>
      <th class = \"border\">Primary Evacuee Phone</th>
      <th class = \"border\">Number of People</th>
      <th class = \"border\">Accommodation Name</th>
      <th class = \"border\">Region</th>
      <th class = \"border\">Caller Name</th>
      <th class = \"border\">Caller E.M.S Number</th> 
      <th class = \"border\">Caller Contact Number</th>
    </tr>";


while($row = mysqli_fetch_array($result))
{
echo "<tr class = \"bordor-slate-500 p-2\">";
echo "<td class = \"border p-2\">" . $row['bookingID'] . "</td>";
echo "<td class = \"border p-2\">" . $row['evacPrimaryName'] . "</td>";
echo "<td class = \"border p-2\">" . $row['evacPhoneNumber'] . "</td>";
echo "<td class = \"border p-2\">" . $row['NumPeople'] . "</td>";
echo "<td class = \"border p-2\">"   . $row['aname'] . "</td>";
echo "<td class = \"border p-2\">"   . $row['rname'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerName'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerID'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerPhoneNumber'] . "</td>
<td class = \"border-none\">
<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
  <button type=\"button\" onclick=\"endStay(".$row['accID'].",".$row['bookingID'].",".$rID.")\" class=\"py-2 px-4 text-sm font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\">End Stay</button>
</div></td>";
echo "</tr>";
}
echo "</table>
</div><br>";

//Declined Table
$result = getDeclinedBookings($rID);


echo "<div class = \"flex flex-col justify-center items-center ml-96\">
<div class = \"flex flex-col justify-center items-center\">
    <h3 id=\"declined\" class = \"py-2 px-4 m-2 text-2xl font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\">Declined Bookings</h3>
</div><br>

<table id=\"declinedTable\" class = \"table-fixed border mx-10 border-none\">
    <tr class = \"bordor-slate-500 p-2\">
      <th class = \"border\">Booking ID</th>
      <th class = \"border\">Primary Evacuee Name</th>
      <th class = \"border\">Primary Evacuee Phone</th>
      <th class = \"border\">Number of People</th>
      <th class = \"border\">Accommodation Name</th>
      <th class = \"border\">Region</th>
      <th class = \"border\">Caller Name</th>
      <th class = \"border\">Caller E.M.S Number</th> 
      <th class = \"border\">Caller Contact Number</th>
    </tr>";


while($row = mysqli_fetch_array($result))
{
echo "<tr class = \"bordor-slate-500 p-2\">";
echo "<td class = \"border p-2\">" . $row['bookingID'] . "</td>";
echo "<td class = \"border p-2\">" . $row['evacPrimaryName'] . "</td>";
echo "<td class = \"border p-2\">" . $row['evacPhoneNumber'] . "</td>";
echo "<td class = \"border p-2\">" . $row['NumPeople'] . "</td>";
echo "<td class = \"border p-2\">"   . $row['aname'] . "</td>";
echo "<td class = \"border p-2\">"   . $row['rname'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerName'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerID'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerPhoneNumber'] . "</td>";
echo "</tr>";
}
echo "</table>
</div><br>";

//Get wishlist items
$result = getAllWish($rID);

echo "<div class = \"flex flex-col justify-center items-center ml-96\">
<div class = \"flex flex-col justify-center items-center\">
    <h3 id=\"wishList\" class = \"py-2 px-4 m-2 text-2xl font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\">Wishlists</h3>
</div><br>

<table id=\"wishTable\" class = \"table-fixed border mx-10 border-none\">
    <tr class = \"bordor-slate-500 p-2\">
      <th class = \"border\">Wish ID</th>
      <th class = \"border\">Primary Evacuee Name</th>
      <th class = \"border\">Primary Evacuee Phone</th>
      <th class = \"border\">Number of People</th>
      <th class = \"border\">Region</th>
      <th class = \"border\">Caller Name</th>
      <th class = \"border\">Caller E.M.S Number</th> 
      <th class = \"border\">Caller Contact Number</th>
      <th class = \"border\">Wheelchair</th>
      <th class = \"border\">Pets</th>
      <th class = \"border\">Medical</th> 
      <th class = \"border\">Bed</th>
      <th class = \"border\">Suitable Locations</th>
      <th></th>
    </tr>";


while($row = mysqli_fetch_array($result))
{
echo "<tr class = \"bordor-slate-500 p-2\">";
echo "<td class = \"border p-2\">" . $row['wishID'] . "</td>";
echo "<td class = \"border p-2\">" . $row['evacPrimaryName'] . "</td>";
echo "<td class = \"border p-2\">" . $row['evacPhoneNumber'] . "</td>";
echo "<td class = \"border p-2\">" . $row['NumPeople'] . "</td>";
echo "<td class = \"border p-2\">"   . $row['rname'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerName'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerID'] . "</td>";
echo "<td class = \"border p-2\">" . $row['bookerPhoneNumber'] . "</td>";

// Check details of wish
$boolCheck = ["No", "No", "No", "No"];
$filter = ["false", "false", "false", "false"];

if ($row['WCA'] == true){
  $boolCheck[0] = "Yes";
  $filter[0] = "true";
}
if ($row['Pets'] == true){
  $boolCheck[1] = "Yes";
  $filter[1] = "true";
}
if ($row['Med'] == true){
  $boolCheck[2] = "Yes";
  $filter[2] = "true";
}
if ($row['Bed'] == true){
  $boolCheck[3] = "Yes";
  $filter[3] = "true";
}

echo "<td class = \"border p-2\">"   . $boolCheck[0] . "</td>";
echo "<td class = \"border p-2\">" . $boolCheck[1] . "</td>";
echo "<td class = \"border p-2\">" . $boolCheck[2] . "</td>";
echo "<td class = \"border p-2\">" . $boolCheck[3] . "</td>";

// Get locations that suit the wish
$innerResult = getFilteredAcc($rID, $filter);
echo "<td class = \"border p-2\">
      <form action=\"\" method=\"get\" id=\"regForm\">
      <input type=\"hidden\" id=\"wID\" name=\"wID\" value=\"". $row['wishID'] ."\" />
      <input type=\"hidden\" id=\"rID\" name=\"rID\" value=\"". $row['rID'] ."\" />";
echo "<select id=\"chooseAcc\" name=\"chooseAcc\" required>
<option value=\"\" disabled selected>Select your option</option>";
  
  while($innerRow = mysqli_fetch_array($innerResult)){
    echo "<option value =" . $innerRow['accID'] . ">" . $innerRow['aname'] . "</option>";
  }
  echo"</select></td>";

echo "<td class = \"border-none\">";
echo "<div class=\"inline-flex rounded-md shadow-sm\">
        <input type=\"submit\" name=\"submit\" value=\"Submit\" class=\"py-2 px-4 text-sm font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\"></input>
      </div></td></form>";
echo "<td class = \"border-none\">
<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
  <button type=\"button\" onclick=\"declineWish(".$row['wishID'].",".$rID.")\" class=\"py-2 px-4 text-sm font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\">Delete</button>
</div></td>";
echo "</tr>";
}
echo "</table>
</div>";

?>

</br></br>


</body>


@endsection
