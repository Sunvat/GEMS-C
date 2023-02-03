@extends('Layouts.default')

@section('main')
    <body>

    <?php
if( isset($_GET['submit']) )
{
    require dirname(__DIR__, 3).'/database/insertFuncs.php';

    $newBooking = array(htmlentities($_GET['cname']), htmlentities($_GET['ems_division']), htmlentities($_GET['callerID']), htmlentities($_GET['callerContactNumber']), htmlentities($_GET['aname']), htmlentities($_GET['accID']), htmlentities($_GET['region']), htmlentities($_GET['gname']), htmlentities($_GET['numOfEvacs']), htmlentities($_GET['primEvacName']), htmlentities($_GET['primEvacContactNum']), htmlentities($_GET['WCA']), htmlentities($_GET['pets']), htmlentities($_GET['med']), htmlentities($_GET['bed']));
    //echo implode(" ",$newBooking);
    InsertBooking($newBooking);
    header('Location: /Booking-Submitted');
    die();
}

?>
        
        <br>
        <div class ="pt-14 text-white text-center ">
        <p class="bg-Dgreen border-2"> Make a booking request by filling up this form</p>
        </div>
        <br>
        <body >
        <div class="w-96  mx-auto">
            <form action="" method="get" class="pb-1">
                 <fieldset class="border 5px px-5 py-5">
                    <legend class="mb-5 text-xl font-bold text-white">Request Booking.</legend>
                    <label for="cname" class=" text-white">Caller Name:</label>
                     <input type="text" id="cname" name="cname" class = "border solid 5px  mb-2 display block ">
                     <br>
                      <label for="ems_division"class=" text-white">Caller EMS Division:</label>
                      <input type="text" id="ems_division" name="ems_division" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="callerID"class=" text-white">Caller I.D Number:</label>
                     <input type="text" id="callerID" name="callerID" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="callerContactNumber:"class=" text-white">Caller Contact Number:</label>
                     <input type="text" id="callerContactNumber" name="callerContactNumber" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="aname" class=" text-white">Accommodation Name:</label>
                     <?php
                     require dirname(__DIR__, 3).'/database/selectFuncs.php';
                     $accID = $_GET["accID"];
                     $aname = $_GET["aname"];

                     echo "<input type=\"text\" id=\"aname\" name=\"aname\" value=\"$aname\" class = \"border solid 5px  mb-2 display block \" readonly>";
                     echo "<br>"; 
                     echo "<label for=\"accID\" class=\" text-white\">Accommodation ID:</label>";
                     echo "<input type=\"number\" id=\"accID\" name=\"accID\" value=$accID class = \"border solid 5px  mb-2 display block \" readonly>";
                     ?>
                     
                     <br>
                     <label for="region" class=" text-white">Region:</label>
                     <input type="text" id="region" name="region" class = "border solid 5px  mb-2 display block ">
                     <br>
                     <label for="gname" class=" text-white">GroupName:</label>
                     <input type="text" id="gname" name="gname" class = "border solid 5px  mb-2 display block ">
                     <br>
                     <label for="numOfEvacs"class=" text-white">Number of Evacuees:</label>
                     <input type="number" id="numOfEvacs" name="numOfEvacs" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="primEvacName"class=" text-white">Primary Evacuee First Name:</label>
                     <input type="text" id="primEvacName" name="primEvacName" class = "border solid 5px  mb-2 display block ">
                     <br>
                     <label for="primEvacContactNum"class=" text-white">Primary Evacuee Contact Number:</label>
                     <input type="text" id="primEvacContactNum" name="primEvacContactNum" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="WCA" class=" text-white">Wheel Chair Assistance Required?</label>
                     <input type="number" id="WCA" name="WCA" class = "border solid 5px  mb-2 display block ">
                     <br>
                     <label for="pets" class=" text-white">Pet friendly accommodation Required?</label>
                     <input type="number" id="pets" name="pets" class = "border solid 5px  mb-2 display block ">
                     <br>
                     <label for="med" class=" text-white">Medical Assistance Required?</label>
                     <input type="number" id="med" name="med" class = "border solid 5px  mb-2 display block ">
                     <br>
                     <label for="bed" class=" text-white">Beds Required?</label>
                     <input type="number" id="bed" name="bed" class = "border solid 5px  mb-2 display block ">
                     <br>
                 </fieldset>
                 <div class="md:w-2/3">
                 <input type="submit" name="submit" value="submit" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white"></input>
                  </div>
                </form>
                
        </div>
        
    </body>


@endsection
