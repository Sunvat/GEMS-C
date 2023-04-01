@extends('Layouts.RA-default')

@section('main')

<body class>
    <div class = "flex flex-col justify-center items-center">
      <div class="ml-12">
        <div class = "flex flex-col justify-center items-center" style = "margin-right: -125px ">
          <h1 class="text-2xl text-black italic font-size:25px ">Latest Emergency Updates/Information</h1>
            <button class = "py-4">
              <a href="{{route('RA-LEI')}}" class = "py-2 px-4 text-sm font-medium text-black bg-blak/40 rounded-lg border border-Dgreen hover:bg-gold hover:text-Dgreen">Add or Edit Emergency Updates</a>
            </button>
        </div>
        
        <div class = "flex justify-center items-center ml-20" style = "margin-right: -100px">
        <?php
        require dirname(__DIR__, 3).'/database/selectFuncs.php';
        $LEI = getLEIandID();

        echo '<table class=\"min-w-full divide-y divide-gray-400\">
                <thead class="bg-blak/90">
                    <tr>
                        <th class="py-3 px-6 text-xs font-medium tracking-wider text-left uppercase text-black">
                            Location
                        </th>
                        <th class="py-3 px-6 text-xs font-medium tracking-wider text-left uppercase text-black">
                            Date/Time
                        </th>
                        <th class="py-3 px-6 text-xs font-medium tracking-wider text-left uppercase text-black">
                            Update
                        </th>
                        
                    </tr>
                </thead>';
          while($row = mysqli_fetch_array($LEI)){
          echo "<tbody class=\"divide-y bg-gray-500/50 divide-gray-400\">";
          echo    "<tr>";
          echo      "<th class = \" font-medium border p-2 border-slate-400 \">".$row[1]."</th>";
          echo      "<th class = \" font-medium border p-2 border-slate-400 \">".$row[3]."</th>";
          echo      "<th class = \" font-medium border p-2 border-slate-400 \">".$row[2]."</th>";
          echo    "</tr>";
          echo "</tbody>";
          }
  
         echo "</table>";
        ?>
        </div>
        <br>
        <br>
        <div class = "mr-8 ml-36 w-100 rounded flex flex-row flex-col justify-center items-center text-lg">
      <h1>Select a Region to View/Update/Book Accommodations</h1>
    </div>
      </div>
      <?php
      if(isset($_GET['submit'])){
      $rID = htmlentities($_GET['regions']);
      header('Location: /RA-Accommodations?rID=' . $rID);
      die();
      }
      ?>
      <div class = "flex flex-col items-center ml-48 mr-8 ">
          <form id="ChooseRegion">
          <br>
          <?php

          $result = getRegionAndID();

          echo "<form action=\"\" method=\"get\" id=\"regForm\">";
          echo "<select id=\"regions\" name=\"regions\"  class=\" w-80 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block p-2.5\">";
  
          while($row = mysqli_fetch_array($result)){
          echo "<option value =" . $row['rID'] . ">" . $row['rname'] . "</option>";
          }
          echo"</select> <br>";
          echo "<div class=\"flex flex-col jusify-center items-center\">
          <input type=\"submit\" name=\"submit\" value=\"Submit\" class=\"py-2 px-4 text-sm font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\"></input>
          </div></div></form>";
          ?>
      </div>
    </div>
</body>

@endsection

