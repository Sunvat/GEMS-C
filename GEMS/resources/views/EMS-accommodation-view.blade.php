@extends('Layouts.default')
@section('main')
<body>
<?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';
$ID = $_GET["ID"];
$row = getAccDet($ID);
echo "
<br><br>

<div class = \"flex flex-col justify-center items-center\">
  <table class = \"table-fixed border bordor-slate-500\">
    <tr class = \"border border-slate-500\">
      <th class = \"border border-slate-500 border-r-0\" id=\"ImgColumn\">Accommodation Name</th>
      <th class = \"bordor bordor-slate-500 border-x-0\"></th>
      <th class = \"bordor bordor-slate-500 p-2\">Address</th>
      <th class = \"border border-slate-500 p-2\" id=\"CapColumn\">Capacity</th>
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
      echo"</tr>
      <tr class = \"border border-slate-500\">
    <td class = \"border border-slate-500 p-2\" id=\"descCol\" colspan=\"100%\">" . $row['descr'] . "</td>
    </tr>
    </table></div>";
?>
</body>
@endsection