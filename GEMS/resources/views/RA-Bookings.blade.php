@extends('Layouts.RA-default')

@section('main')
  <header>

  <script>
    function decline(bookingID) {
      //Redirects to a page that runs the PHP confirmDeclineBooking function on the accommodation with the ID.
      window.location.href = "/RA-declineBooking?bookingID="+bookingID;
}

    function approve(bookingID) {
      //Redirects to a page that runs the PHP confirmDeclineBooking function on the accommodation with the ID.
      window.location.href = "/RA-ApproveBooking?bookingID="+bookingID;
}
</script>

</header>

<body>
    
<br>

<?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';

//SHOULD USE AN rID ONCE ACCOUNTS ARE SET UP
$result = getPendingBookings();


echo "<div class = \"flex flex-col justify-center items-center ml-96\">
<div class = \"flex flex-col justify-center items-center\">
    <h3 class = \"p-2 text-4xl text-white bg-Dgreen rounded-lg border-2 border-gold hover:bg-Lgreen\">Pending Bookings</h3>
</div><br>

<table class = \"table-fixed border mx-10 border-none\">
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
        <button type=\"button\" onclick=\"approve(".$row['bookingID'].")\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white\">Approve</button>
      </div></td>";
echo "<td class = \"border-none\">
<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
  <button type=\"button\" onclick=\"decline(".$row['bookingID'].")\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white\">Decline</button>
</div></td>";
echo "</tr>";
}
echo "</table>
</div><br>";


//Confirmed Table
$result = getConfirmedBookings();


echo "<div class = \"flex flex-col justify-center items-center ml-96\">
<div class = \"flex flex-col justify-center items-center\">
    <h3 class = \"p-2 text-4xl text-white bg-Dgreen rounded-lg border-2 border-gold hover:bg-Lgreen\">Approved Bookings</h3>
</div><br>

<table class = \"table-fixed border mx-10 border-none\">
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

//Confirmed Table
$result = getDeclinedBookings();


echo "<div class = \"flex flex-col justify-center items-center ml-96\">
<div class = \"flex flex-col justify-center items-center\">
    <h3 class = \"p-2 text-4xl text-white bg-Dgreen rounded-lg border-2 border-gold hover:bg-Lgreen\">Declined Bookings</h3>
</div><br>

<table class = \"table-fixed border mx-10 border-none\">
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
</div>";

?>

</br></br>


</body>


@endsection
