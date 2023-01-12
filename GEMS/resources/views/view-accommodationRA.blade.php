@extends('Layouts.RA-default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
  <script>
    function deletePopup($ID) {
        var r = confirm("Are you sure you want to delete this accommodation? (task completed, press ok)");
        if (r == true) {
          window.location.href = "/RA-Accommodations";
     }
        else {
     }
}
</script>
</head>

<body>
<?php
require dirname(__DIR__, 3).'/database/getAccDet.php';
$ID = $_GET["ID"];
$result = getAccDet($ID);
$row = mysqli_fetch_array($result);
echo "
<br> 

<div class = \"flex flex-col justify-center items-center\">
  <div class = \"p-1 bg-Glohaven-Orange rounded-md\">
    <h2 class = \"text-3xl\">Accommodations</h2>
  </div> 
</div>

<br>
<br>

<div class = \"flex flex-col justify-center items-center\">
  <table class = \"table-fixed border bordor-slate-500\">
    <tr class = \"border border-slate-500\">
      <th class = \"border border-slate-500 border-r-0\" id=\"ImgColumn\">Accommodation Name</th>
      <th class = \"bordor bordor-slate-500 border-x-0\"></th>
      <th class = \"bordor bordor-slate-500 p-2\">Address</th>
      <th class = \"border border-slate-500 p-2\" id=\"CapColumn\">Capacity</th>
      <th class = \"border border-slate-500 p-2\"></th>
      <th class = \"border border-slate-500 p-2\"></th>
    </tr>
    <tr class = \"border border-slate-500\">
      <td class = \"border border-slate-500 p-2 border-r-0\" id=\"ImgColumn\" height=100 width=100><img src=\"https://ok.ubc.ca/wp-content/uploads/sites/26/2018/02/unc-opens-2009-history.jpg\" alt=\"accommodation\"></td>
      <td class = \"border border-slate-500 p-2 border-x-0\">" . $row['aname'] . "</td>
      <td class = \"border border-slate-500 p-2\" id=\"AdressColumn\">" . $row['address'] . "</td>
      <td class = \"border border-slate-500 p-2\" id=\"CapColumn\">" . $row['openSpace'] . "</td>
      <td class = \"border border-slate-500 p-2\">
      <div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
      <button type=\"button\" onclick=\"location.href='/Update?ID=". $ID ."';\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-l-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-Glohaven-Orange dark:focus:text-white\">Update</button>
      </div></td>
      <td class = \"border border-slate-500 p-2\">
      <div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
      <button type=\"button\" onclick=\"deletePopup(". $ID .")\" class=\"py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-r-md border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white\">Delete</button>
      </div></td>
    </tr>
    
  </table>
</div>"
?>

</body>
@endsection