@extends('Layouts.default')

@section('main')
<html class = "ml-5">
    <head>
    <link rel="stylesheet" href="app.css">
    </head>
    <body>
        
        <br>
        <p>Make a booking request by filling up this form</p>
        <br>
        <body >
        <div class="w-96  mx-auto">
            <form class="pb-1">
                 <fieldset class="border 5px px-5 py-5">
                    <legend class="mb-5 text-xl font-bold">Request Booking.</legend>
                    <label for="contactname">Name:</label>
                     <input type="text" class = "border solid 5px ; mb-2; display block ">
                     <br>
                      <label for="ems_division">EMS Division:</label>
                      <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="evacuee_nos">Number of Evacuees:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="local_region">Local Region:</label>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                     <br>
                     <label for="Province">Province:</label>
                     <br>
                     <input type="text" class = "border solid 5px; mb-2; display block ">
                 </fieldset>
                </form>
                <input type="submit" value="Submit" class = "border-2 font-bold ml-36 cursor-pointer">
        </div>
        
    </body>
</html>

@endsection
