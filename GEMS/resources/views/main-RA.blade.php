@extends('Layouts.RA-default')

@section('main')
<body>
  <br>
  <br>
  <span class = "flex flex-row justify-center items-center">
    <h1>
      Welcome RA of Glohaven
    </h1>
  </span>

  <br>
  <!-- this is to take us to LEI page for previous information-->
   <div  class = "flex flex-row justify-center items-center m-4">
      <div  class = "flex flex-col justify-center items-center">
        <h1 class="text-xl font-black font-size:25px p-2">Latest Emergency Update</h1>
        <h2 class="text-xl font-black font-size:25px p-2">Need to chnage something click here:</h2>
        <button class = "group rounded-full text-white border-2 border-gold transition ease-in-out delay-150  hover:-translate-y-1 hover:scale-110 hover:bg-Glohaven-Orange duration-100 mx-2">
          <a href="{{route('RA-LEI')}}" class = "text-lg mx-2 text-white group-hover:text-gold ">Latest Emergency Updates</a>
        </button>
     </div>
   </div>
   <div class = "flex flex-row justify-center items-center" style = "margin-right: -100px">
      <?php

      require dirname(__DIR__, 3).'/database/selectFuncs.php';
      $LEI = getLEIandID();

      echo "<table class = \"table-fixed border mx-24\">
         <tr class = \"border border-slate-500\">
         <th class = \"border border-slate-500\">location</th>
         <th class = \"bordor border-slate-500\">DateTime</th>
         <th class = \"border border-slate-500\">Update</th>
         </tr>";
      
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
  <?php
  //this code will be used to make the lei content on main page.
  echo "<div>";
  echo  "<table class = \"\">";
  echo  "  <th class = \"\">";
  echo  "   <tr class = \"\">";
  echo  "      <td class = \"\">";

  echo  "     </td>";
  echo  "   </tr>";
  echo  "  </th>";
  echo "</table>";
  echo "</div>";
?>
</body>

@endsection
