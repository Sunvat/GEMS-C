@extends('Layouts.RA-default')
@section('main')
<head>
  <link rel="stylesheet" href="app.css">
  <script>
    function deletePopup(ID, rID) {
        var r = confirm("Are you sure you want to delete this accommodation?");
        //This is a very roundabout way of deleting things. Look into AJAX.
        if (r == true) {
          //Redirects to a page that runs the PHP delete function on the accommodation with the ID.
          window.location.href = "/DeleteAcc?ID="+ID+"&rID="+rID;
     }
        else {
     }
}
</script>
</head>

<body>
<?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';
$ID = $_GET["ID"];
$row = getAccDet($ID);
echo "
<br>

<div class = \"flex flex-col justify-center items-center\">
  <table class = \"table-fixed border bordor-slate-500\">
    <tr class = \"border border-slate-500\">
      <th class = \"border border-slate-500 border-r-0\" id=\"ImgColumn\">Location</th>
      <th class = \"bordor bordor-slate-500 border-x-0\"></th>
      <th class = \"bordor bordor-slate-500 p-2\">Address</th>
      <th class = \"border border-slate-500 p-2\" id=\"CapColumn\">Capacity</th>
      <th class = \"border border-slate-500 p-2\" colspan=\"2\"></th>
    </tr>
    <tr class = \"border border-slate-500\">
      <td class = \"border border-slate-500 p-2 border-r-0\" id=\"ImgColumn\" height=100 width=100><img src=\"" . $row['image'] . "\" alt=\"accommodation\"></td>
      <td class = \"border border-slate-500 p-2 border-x-0\">" . $row['aname'] . "</td>
      <td class = \"border border-slate-500 p-2\" id=\"AdressColumn\">" . $row['address'] . "</td>";
      if ($row['isFull'] == true) {
        echo "<td class = \"border border-slate-500 p-2 font-bold text-red-600\" id=\"CapColumn\">FULL</td>";
      } else {
        echo "<td class = \"border border-slate-500 p-2\" id=\"CapColumn\">" . $row['openSpace'] . " People </td>";
      }
      echo "<td class = \"border border-slate-500 p-2\" colspan=\"2\">
      <div class=\"inline-flex rounded-md shadow-sm\" role=\"group\">
      <button type=\"button\" onclick=\"location.href='/Update?ID=$ID';\" class=\"py-2 px-4 text-sm font-medium text-black bg-Glohaven-Orange rounded-l-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-black focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange\">Update</button>
      <button type=\"button\" onclick=\"deletePopup($ID, ".$row['rID'].")\" class=\"py-2 px-4 text-sm font-medium text-black bg-Glohaven-Orange rounded-r-md border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-black focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange\">Delete</button>
      </div></td>
    </tr>
    <tr class = \"border border-slate-500\">
    <td class = \"border border-slate-500 p-2\" id=\"descCol\" colspan=\"100%\">" . $row['descr'] . "</td>
    </tr>
    
  </table>
</div>"
?>

</body>
@endsection