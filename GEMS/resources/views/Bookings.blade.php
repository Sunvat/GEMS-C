@extends('Layouts.RA-default')

@section('main')
  <header>

  <script>
    function deletePopup(bookingID) {
        var r = confirm("Are you sure you want to delete this booking request?");
        //This is a very roundabout way of deleting things. Look into AJAX.
        if (r == true) {
          //Grabs ID from query string in the URL.
          //Redirects to a page that runs the PHP delete function on the accommodation with the ID.
          window.location.href = "/DeleteBooking?bookingID="+bookingID;
     }
        else {
     }
}
</script>


</header>

<body>
    
<br>

<?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';

$result = getAllBookings();


echo "<div class = \"flex flex-col justify-center items-center\">
<table class = \"table-fixed border mx-10\">
    <tr class = \"bordor-slate-500 p-2\">
      <th class = \"border\">Booking I.D</th>
      <th class = \"border\">Primary Evacuee Name</th>
      <th class = \"border\">Primary Evacuee Contact Number</th>
      <th class = \"border\">Number of People</th>
      <th class = \"border\">Accommodation Name</th>
      <th class = \"border\">Region</th>
      <th class = \"border\">Group Name</th>
      <th class = \"border\">Caller Name</th>
      <th class = \"border\">Caller E.M.S Number</th> 
      <th class = \"border\">Caller Contact Number</th>
      <th class = \"border\">Pets Included</th>
      <th class = \"border\">Wheelchair Assistance</th>
      <th class = \"border\">Medical Assistance</th>
      <th class = \"border\">Beds Available</th>
      <th></th>
      <th></th>
    </tr>";


while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td class = \"border border-slate-500 p-2 border-r-0 height=100 width=100\">" . $row['bookingID'] . "</td>";
echo "<td class = \"border border-slate-500 p-2 border-x-0\">" . $row['primEvacName'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">" . $row['phoneNumber'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">" . $row['NumPeople'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">"   . $row['aname'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">"   . $row['region'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">" . $row['groupName'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">" . $row['CallerName'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">" . $row['CallerEMSID'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">" . $row['CallerContactNumber'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">" . $row['Pets'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">" . $row['WCA'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">" . $row['Med'] . "</td>";
echo "<td class = \"border border-slate-500 p-2\">" . $row['Bed'] . "</td>";

echo "<td class = \"border border-slate-500 p-2\">";
echo "<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
        <button type=\"button\" onclick=\"location.href='/view-accommodation?ID=". $row['accID'] ."';\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white\">Accept</button>
      </div></td>";
echo "<td class = \"border border-slate-500 p-2\">
<div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
  <button type=\"button\" onclick=\"deletePopup(".$row['bookingID'].")\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white\">Decline</button>
</div></td>";
echo "</tr>";
}
echo "</table>
</div>";

?>

</br></br>


</body>


@endsection
