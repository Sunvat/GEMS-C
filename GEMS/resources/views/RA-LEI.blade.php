@extends('Layouts.RA-default')

@section('main')
<head>
  <script>
   // not working 
    function deletePopup(rID, datetime, lei) {
        var r = confirm("Are you sure you want to delete this accommodation?");
        //This is a very roundabout way of deleting things. Look into AJAX.
        if (r == true) {
          //Redirects to a page that runs the PHP delete function on the accommodation with the ID.
          window.location.href = "/RA-DeleteLEI?rID="+rID+"&datetime="+datetime+"&lei="+lei;
        }
   }
   </script>
</head>
<body>
   <br>
   <div class = "flex flex-col justify-center items-center">
      <h1 class = "font-bold text-3xl text-Chared">
         Latest Emergency Information
      </h1>
      <br>
      <div>
        <button class = "group bg-slate-300 rounded-full hover:bg-slate-600 m-2">
            <a href="{{route('RA-LEI-Create-Region')}}" class="text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition">Create New Update</a>
        </button>
      </div>

      <?php

      require dirname(__DIR__, 3).'/database/selectFuncs.php';
      $LEI = getLEIandID();
      echo "<table class = \"table-fixed ml-32 bg-white w-7/12 bg-slate-300\">
      <thead class = \"bg-blak/90\">
      <tr class = \"border border-slate-500\">
         <th class = \"border border-slate-500 w-36\">location</th>
         <th class = \"bordor border-slate-500 w-36\">DateTime</th>
         <th class = \"border border-slate-500\">Update</th>
         <th class = \"border border-slate-500 w-48\"></th>
      </tr>
      </thead>";

      while($row = mysqli_fetch_array($LEI)){
         echo "<tr>";
         echo "<th class = \"border p-2 border-slate-500\">".$row[1]."</th>";
         echo "<th class = \"border p-2 border-slate-500\">".$row[3]."</th>";
         echo "<th class = \"border p-2 border-slate-500\">".$row[2]."</th>";
         echo "<th class = \"border p-2 border-slate-500\">
               <div class=\"inline-flex rounded-md shadow-sm group bg-slate-100 rounded-full hover:bg-slate-600 m-2\" role=\"group\">
                  <button type=\"button\" name = \"Update\" id=\"Update\" onclick=\"location.href='/Update-LEI-RA?location=". $row[1]." ';\" class=\"text-lg mx-2 text-slate-800 hover:text-Glohaven-Hovered transition\">Update</button>
                  <button type=\"button\" onclick=\"deletePopup('".$row[0]."', '".$row[3]."', '".$row[2]."')\" class=\"text-lg mx-2 text-slate-800 hover:text-Glohaven-Hovered transition\">Delete</button>
               </div></td>";
         echo "</tr>";
      }
      echo "</table>";
      ?>
   </div>
</body>
@endsection