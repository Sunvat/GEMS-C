@extends('Layouts.default')

@section('main')
<!DOCTYPE html>
<html class = "ml-5">
    <head>
    <link rel="stylesheet" href="app.css">
    </head>
    <body >
        <br>
        <p>Make a booking request by filling up this form</p>
        <br>
</body>
<div class="width 200px my-0; mx-auto ">
<form class="my-10">
    <fieldset class="border 10px ">
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
    <input type="submit" value="Submit" class = "border solid 3px;display block; mt-5 font-bold">
</form>
</div>
</html>

@endsection
