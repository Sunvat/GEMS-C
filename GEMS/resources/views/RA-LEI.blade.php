@extends('Layouts.RA-default')

@section('main')
<body>
   <br>
   <div class = "flex flex-col justify-center items-center">
      <h1 class = "font-bold text-3xl text-Chared">
         Latest Emergency Information
      </h1>
      <br>
      <div>
        <button class = "group bg-slate-300 rounded-full hover:bg-slate-600 m-2">
            <a href="{{route('RA-LEI-Create-Region')}}" class="text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition">Create</a>
        </button>
      </div>

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
         echo "<th class = \"border p-2 border-slate-500\">
               <button class = \"group bg-slate-300 rounded-full hover:bg-slate-600 m-2\">
                  <a href=\"{{route('Update-LEI-RA')}}\" class=\"text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition\">Update</a>
               </button></th>";
         echo "</tr>";
      }
      echo "</table>";
      ?>
   </div>
</body>
@endsection