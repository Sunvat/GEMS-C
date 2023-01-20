@extends('Layouts.RA-default')

@section('main')
<html class = "ml-0">
    <head>
    <link rel="stylesheet" href="app.css">
    </head>
    <body>
        
        <br>
        <div class ="pt-14 text-white text-center ">
        <p class="bg-Dgreen border-2"> Make a booking request by filling up this form</p>
        </div>
        <br>
        <body >
        <div class="w-96  mx-auto">
            <form class="pb-1">
                 <fieldset class="border 5px px-5 py-5">
                    <legend class="mb-5 text-xl font-bold text-white">Request Booking.</legend>
                    <label for="contactname">Caller First Name:</label>
                     <input type="text" class = "border solid 5px  mb-2 display block ">
                     <br>
                     <label for="contactname">Caller Last Name:</label>
                     <input type="text" class = "border solid 5px  mb-2 display block ">
                     <br>
                      <label for="ems_division">Caller EMS Division:</label>
                      <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="I.D Number">Caller I.D Number:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="Email_Address">Caller Email Address:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="CallerContactNumber:">Caller Contact Number:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="evacuee_nos">Number of Evacuees:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="PrimaryEvacueName">Primary Evacuee First Name:</label>
                     <input type="text" class = "border solid 5px  mb-2 display block ">
                     <br>
                     <label for="EvacueeContactNumber">Primary Evacuee Contact Number:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                 </fieldset>
                </form>
                <br>
                <br>
                <div class="inline-flex rounded-md shadow-sm" role="group">
                <button type="button" onclick="location.href='/Booking-Submitted';" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white">Submit</button>
                </div>
        </div>
        
    </body>
</html>

@endsection
