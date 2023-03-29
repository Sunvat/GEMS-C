@extends('Layouts.RA-default')

@section('main')
<body>

    <?php
if( isset($_GET['submit']) )
{
    require dirname(__DIR__, 3).'/database/insertFuncs.php';

    $newBooking = array(htmlentities($_GET['accID']), htmlentities($_GET['rID']), htmlentities($_GET['cname']), htmlentities($_GET['ems_division']), htmlentities($_GET['callerID']), htmlentities($_GET['callerContactNumber']), htmlentities($_GET['numOfEvacs']), htmlentities($_GET['primEvacName']), htmlentities($_GET['primEvacContactNum']));
    InsertBooking($newBooking);
    header('Location: /RA_Booking-Submitted');
    die();
}

?>
        
        <br>
        <br>
        <body >
        <div class="w-96  mx-auto">
            <form action="" method="get" class="pb-1">
                 <fieldset class="border 5px px-5 py-5">
                    <legend class="mb-5 text-xl font-bold text-black">Booking Request Form</legend>
                    <?php
                        $accID = $_GET["accID"];
                        $rID = $_GET["rID"];
                        echo "<input type=\"hidden\" value=\"$accID\" id=\"accID\" name=\"accID\">";
                        echo "<input type=\"hidden\" value=\"$rID\" id=\"rID\" name=\"rID\">";
                     ?>
                     <input type="hidden" id="ems_division" name="ems_division" value="Glohaven">
                     
                     <label for="cname" class=" text-black">Your Name (PLACEHOLDER UNTIL ACCOUNTS ARE READY):</label>
                     <input type="text" id="cname" name="cname" class = "border solid 5px  mb-2 display block w-full" placeholder="John Doe" required>
                     <br>
                     <label for="callerID"class=" text-black">Glohaven Employee ID:</label>
                     <input type="text" id="callerID" name="callerID" class = "border solid 5px; mb-2; display block w-full" placeholder="CFD-12345" required>
                     <br>
                     <label for="callerContactNumber:"class=" text-black">Your Contact Number:</label>
                     <input type="text" id="callerContactNumber" name="callerContactNumber" class = "border solid 5px; mb-2; display block w-full" placeholder="+1 (123) 123-4567" required>
                     <br>
                     <label for="primEvacName"class=" text-black">Primary Evacuee Name:</label>
                     <input type="text" id="primEvacName" name="primEvacName" class = "border solid 5px  mb-2 display block w-full" placeholder="Samantha Smith" required>
                     <br>
                     <label for="primEvacContactNum"class=" text-black">Primary Evacuee Contact Number:</label>
                     <input type="text" id="primEvacContactNum" name="primEvacContactNum" class = "border solid 5px; mb-2; display block w-full" placeholder="+1 (123) 123-4567" required>
                     <br>
                     <label for="numOfEvacs"class=" text-black">Evacuee Group Size:</label>
                     <input type="number" id="numOfEvacs" name="numOfEvacs" class = "border solid 5px; mb-2; display block w-full" placeholder="5" required>
                     <br>
                     <div class="md:w-2/3">
                        <input type="submit" name="submit" value="submit" class="py-2 px-4 m-2 text-sm font-medium text-black bg-blak/40 rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange"></input>
                     </div>
                 </fieldset>
                </form>
                
        </div>
        
    </body>
@endsection
