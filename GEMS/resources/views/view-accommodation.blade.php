@extends('Layouts.default')
@section('main')
<body>
<?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';
$ID = $_GET["ID"];
$result = getAccDet($ID);
$row = mysqli_fetch_array($result);
echo "
<br>

<div class = \"flex flex-col justify-center items-center\">
  <table class = \"table-fixed border bordor-slate-500\">
    <tr class = \"border border-slate-500\">
      <th class = \"border border-slate-500 border-r-0\" id=\"ImgColumn\">Accommodation Name</th>
      <th class = \"bordor bordor-slate-500 border-x-0\"></th>
      <th class = \"bordor bordor-slate-500 p-2\">Address</th>
      <th class = \"border border-slate-500 p-2\" id=\"CapColumn\">Capacity</th>
    </tr>
    <tr class = \"border border-slate-500\">
      <td class = \"border border-slate-500 p-2 border-r-0\" id=\"ImgColumn\" height=100 width=100><img src=\"https://ok.ubc.ca/wp-content/uploads/sites/26/2018/02/unc-opens-2009-history.jpg\" alt=\"accommodation\"></td>
      <td class = \"border border-slate-500 p-2 border-x-0\">" . $row['aname'] . "</td>
      <td class = \"border border-slate-500 p-2\" id=\"AdressColumn\">" . $row['address'] . "</td>
      <td class = \"border border-slate-500 p-2\" id=\"CapColumn\">" . $row['openSpace'] . "</td>
    </tr>
    
  </table>
</div>"
?>
</body>
@endsection