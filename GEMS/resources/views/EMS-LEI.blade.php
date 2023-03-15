@extends('Layouts.default')

@section('main')
<!-- Paged used to display LEI information to Users(EMS)-->
<body>
   <br>
   <br>
   <div class = "flex flex-col justify-center items-center">
      <h1 class = "font-bold text-3xl text-Chared">
         Latest Emergency Information
      </h1>
      <br>
      <?php
      //get LEI information from database
      require dirname(__DIR__, 3).'/database/selectFuncs.php';
      $LEI = getLEIandID();
      //display
      echo "<table class = \"table-fixed border mx-24\">
      <tr class = \"border border-slate-500\">
         <th class = \"border border-slate-500\">location</th>
         <th class = \"bordor border-slate-500\">DateTime</th>
         <th class = \"border border-slate-500\">Update</th>
      </tr>";
      //display information to users
      while($row = mysqli_fetch_array($LEI)){
         echo "<tr>";
         echo "<th class = \"border p-2 border-slate-500\">".$row[1]."</th>";
         echo "<th class = \"border p-2 border-slate-500\">".$row[3]."</th>";
         echo "<th class = \"border p-2 border-slate-500\">".$row[2]."</th>";
         echo "</tr>";
      }
      echo "</table>";
      ?>
   </div>
</body>
@endsection