@extends('Layouts.default')

@section('main')
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
                    <label for="contactname" class=" text-white">Caller First Name:</label>
                     <input type="text" class = "border solid 5px  mb-2 display block ">
                     <br>
                     <label for="contactname"class=" text-white">Caller Last Name:</label>
                     <input type="text" class = "border solid 5px  mb-2 display block ">
                     <br>
                      <label for="ems_division"class=" text-white">Caller EMS Division:</label>
                      <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="I.D Number"class=" text-white">Caller I.D Number:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="Email_Address"class=" text-white">Caller Email Address:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="CallerContactNumber:"class=" text-white">Caller Contact Number:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="evacuee_nos"class=" text-white">Number of Evacuees:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="PrimaryEvacueName"class=" text-white">Primary Evacuee First Name:</label>
                     <input type="text" class = "border solid 5px  mb-2 display block ">
                     <br>
                     <label for="EvacueeContactNumber"class=" text-white">Primary Evacuee Contact Number:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                 </fieldset>
                </form>
                <br>
                <br>
                <div class="inline-flex rounded-md shadow-sm" role="group">
                <button type="button" onclick="location.href='/Booking-Submitted';" class="py-2 px-4 text-sm font-medium text-white bg-Dgreen rounded-lg border-2 border-gold ">Submit</button>
                </div>
        </div>
        
    </body>


@endsection
