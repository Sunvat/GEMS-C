@extends('Layouts.default')

@section('main')

<body class>

  <div class = "grid grid-cols-2 ">

    <div  class = "h-60 flex justify-center ">
        <div  class = "flex flex-col justify-center items-center" style = "margin-right: -800px">
          <h1 class="text-xl text-black font-size:25px p-2">Latest Emergency Updates/Information</h1>
          <button class = " group rounded-full text-Glohaven-Orange border-2 border-gold transition ease-in-out delay-150  hover:text-white hover:-translate-y-1 hover:scale-110 hover:bg-Glohaven-Orange duration-100 mx-2 ">
            <a href="{{route('EMS-LEI')}} " class="mx-2 "> Latest Emergency Updates</a>
          </button> 
        </div>
   </div>
  </div>

  <!-- this is an exploration feature for you Akshaj let use that sidebar design we thought of in september   -->
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
</body>

@endsection
