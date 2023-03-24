@extends('Layouts.RA-default')

@section('main')
    <body>

    <?php
if( isset($_GET['submit']) )
{
    require dirname(__DIR__, 3).'/database/insertFuncs.php';

    $newWish = array(htmlentities($_GET['rID']), htmlentities($_GET['cname']), htmlentities($_GET['ems_division']), htmlentities($_GET['callerID']), htmlentities($_GET['callerContactNumber']), htmlentities($_GET['numOfEvacs']), htmlentities($_GET['primEvacName']), htmlentities($_GET['primEvacContactNum']), htmlentities($_GET['wca']), htmlentities($_GET['pets']), htmlentities($_GET['med']), htmlentities($_GET['beds']));
    InsertWishlist($newWish);
    header('Location: /RA-Wish-Submitted');
    die();
}

?>
        <body >
        <div class="w-96  mx-auto">
            <form action="" method="get" class="pb-1">
                 <fieldset class="border 5px px-5 py-5">
                    <legend class="mb-5 text-xl font-bold text-black">Booking Wishlist Form</legend>
                    <input type="hidden" id="wca" name="wca" value="false" />
                    <input type="hidden" id="pets" name="pets" value="false" />
                    <input type="hidden" id="med" name="med" value="false" />
                    <input type="hidden" id="beds" name="beds" value="false" />
                    <?php
                        $rID = $_GET["rID"];
                        echo "<input type=\"hidden\" value=\"$rID\" id=\"rID\" name=\"rID\">";
                     ?>
                     <label for="cname" class=" text-black">Your Name:</label>
                     <input type="text" id="cname" name="cname" class = "border solid 5px  mb-2 display block w-full" placeholder="John Doe" required>
                     <br>
                     <label for="ems_division"class=" text-black">Your Department:</label>
                     <input type="text" id="ems_division" name="ems_division" class = "border solid 5px; mb-2; display block w-full" placeholder="<CITY> Fire Department" required>
                     <br>
                     <label for="callerID"class=" text-black">Department Employee ID:</label>
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
                     <label for="wca" class="text-black">Wheelchair Access Required</label>
                     <input type="checkbox" id="wca" name="wca" value="true"><br>
                     <label for="pets" class="text-black">Have Pets</label>
                     <input type="checkbox" id="pets" name="pets" value="true"><br>
                     <label for="med" class="text-black">Medical Assistance Required</label>
                     <input type="checkbox" id="med"  name="med" value="true"><br>
                     <label for="beds" class="text-black">Beds Preferred</label>
                     <input type="checkbox" id="beds" name="beds" value="true"><br><br>
                     <div class="md:w-2/3">
                        <input type="submit" name="submit" value="submit" class="py-2 px-4 text-sm font-medium text-black bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-black focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-black dark:hover:text-black dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-black"></input>
                     </div>
                 </fieldset>
                </form>
                
        </div>
        
    </body>


@endsection
