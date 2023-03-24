@extends('Layouts.default')

@section('main')
<!--main page for EMS USERS whne first going to the site this page is where you will land -->
<body class>

<div class = "flex flex-col justify-center items-center">
  <?php
  if( isset($_GET['submit']) ){

    $rID = htmlentities($_GET['regions']);

    header('Location: /Accommodations?rID=' . $rID);
    die();
  }
  ?>
  
  <div class = "ml-24">
      <div class = " mr-24 ml-36 w-36 rounded flex flex-col justify-center items-center bg-blak/90">
        <h1>Select Region</h1>
      </div>
      <form id="ChooseRegion">
        <br>
        <?php
        //get region info from database
        require dirname(__DIR__, 3).'/database/selectFuncs.php';
        $result = getRegionAndID();
        echo "<div class = \" flex flex-row \">";
        echo "<form action=\"\" method=\"get\" id=\"regForm\">";

        echo "<select id=\"regions\" name=\"regions\"  class=\" w-80 ml-12 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block p-2.5\">";
        //create rowss
        while($row = mysqli_fetch_array($result)){
          echo "<option value =" . $row['rID'] . ">" . $row['rname'] . "</option>";
        }
        echo"</select> <br>";
        echo "<input type=\"submit\" name=\"submit\" value=\"Submit\" class=\"py-2 px-4 m-2 text-sm font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange\"></input>
              </form>";
        echo "</div>";
        ?>
  </div>
  <br>
  <div>
    <div class = "flex flex-col justify-center items-center">
        <h1 class="text-2xl text-Lorange italic font-size:25px ">Latest Emergency Updates/Information</h1>
    </div>
    <br>

    <div class = "flex justify-center items-center ml-52 w-9/12" style = "">
      <?php
      //Latest EMergency Infor can be found here
      $LEI = getLEIandID(); //Get LEI information from database
      //make things look good... Hopfully.
      echo '<table class=\"min-w-full divide-y divide-gray-200 dark:divide-gray-700\">
              <thead class="bg-blak/90">
                    <tr>
                        <th class="py-3 px-6 text-xs font-medium tracking-widert uppercase text-black">
                            Location
                        </th>
                        <th class="py-3 px-6 text-xs font-medium tracking-wider uppercase text-black">
                            Date/Time
                        </th>
                        <th class="py-3 px-6 text-xs font-medium tracking-wider uppercase text-black">
                            Update
                        </th>
                        
                    </tr>
                  </thead>';

      //Display information form database into rows
      while($row = mysqli_fetch_array($LEI)){
        echo "<tbody class=\"bg-white bg-gray-500/50 divide-gray-400\">";
        echo "<tr>";
        echo "<th class = \" font-medium border p-2 border-slate-400 \">".$row[1]."</th>";
        echo "<th class = \" font-medium border p-2 border-slate-400 \">".$row[3]."</th>";
        echo "<th class = \" font-medium border p-2 border-slate-400 \">".$row[2]."</th>";
        echo "</tr>";
        echo "</tbody>";
      }
      echo "</table>";
      ?>
    </div>
  </div>
</div>
</body>

@endsection

