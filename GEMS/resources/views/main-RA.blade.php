@extends('Layouts.RA-default')

@section('main')

<body class>

<div class = "grid grid-cols-2">

                <div class = "flex flex-col justify-center items-center " style = "margin-right: -400px ">
                    <h2 class="font-bold text-4xl" style="color:#f6ad55" >Our Mission</h2>
                    <br>
                    <p class="font-normal text-black text-left max-w-md">Welcome to the Glohaven Emergency Management System. <br> We provide an accommodation booking service that allows you to find temporary accommodation in times of emergency. 
                    <br><br>GEMS is a website which allows the first responders to come in to manage evacuations, learn more about emergencies and use the resources available to them efficiently. This project allows the members of the emergency services to look for accommodations in the affected areas by selecting their specific region, and then reserving/ booking accommodations for the evacuees.</p>
                    <br><br><p class="text-xl max-w-md text-black">Please choose a region within which you are trying to find accommodation to check availabilities:</b></p>
                </div>

                <div class="ml-12">
                <div class = "flex flex-col justify-center items-center" style = "margin-right: -125px ">
                <span class = "flex flex-row justify-center items-center">
                        <h1>
                            Welcome RA of Glohaven
                         </h1>
                </span>
                   <h1 class="text-2xl text-black italic font-size:25px ">Latest Emergency Updates/Information</h1>
        <button class = "py-4">
          
          <a href="{{route('RA-LEI')}}" class = "py-2 px-4 text-sm font-medium text-black bg-blak/40 rounded-lg border border-Dgreen hover:bg-gold hover:text-Dgreen">Add or Edit Emergency Updates</a>
        </button>
                </div>

<div class = "flex justify-center items-center ml-20 w-96" style = "margin-right: -100px">
<?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';
  $LEI = getLEIandID();

  echo '<table class=\"min-w-full divide-y divide-gray-200 table-fixed dark:divide-gray-700\">
  <thead class="bg-gray-100 dark:bg-blak/90">
                    <tr>
                        <th class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-black">
                            Location
                        </th>
                        <th class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-black">
                            Date/Time
                        </th>
                        <th class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-black">
                            Update
                        </th>
                        
                    </tr>
                </thead>';

  while($row = mysqli_fetch_array($LEI)){
     echo "<tbody class=\"bg-white divide-y divide-gray-200 dark:bg-gray-800/50 dark:divide-gray-700\">";
     echo "<tr class=\"hover:bg-gray-100 dark:hover:bg-gray-700\">";
     echo "<th class = \" font-medium border p-2 border-slate-700 \">".$row[1]."</th>";
     echo "<th class = \" font-medium border p-2 border-slate-700 \">".$row[3]."</th>";
     echo "<th class = \" font-medium border p-2 border-slate-700 \">".$row[2]."</th>";
     echo "</tr>";
     echo "</tbody>";
  }
  
  echo "</table>";
  ?>
   </div>
  </div>
  </div>
<?php
if( isset($_GET['submit']) )
{

    $rID = htmlentities($_GET['regions']);

    header('Location: /RA-Accommodations?rID=' . $rID);
    die();
}
?>
<div style = "margin-right: 325px">

<div class = "flex flex-col items-center">
  <form id="ChooseRegion">
    <br>
    <?php

    $result = getRegionAndID();

    echo "<form action=\"\" method=\"get\" id=\"regForm\">";
    echo "<select id=\"regions\" name=\"regions\"  class=\" w-80 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500\">";
  
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

