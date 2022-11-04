
@extends('Layouts.default')

@section('main')
<body class="mx-auto pt-4">
<div class="grid grid-cols-2 divide-x">
<div class="bg-white" ></div>
    <div class=" w-fit mx-auto py-4 px-52 bg-Glovhaven-bg" id = "container">
        <form action="Create-Account" class="border-4" method="POST">
                <label name ="fr_name" for="first_name" class="mx-2">First Name:</label>
                <br>
                <input type="text" placeholder="John" class="mx-2 mb-4 py-2 px-2 border-2">
                <br>
                <label for="last_name"class="mx-2">Last Name:</label>
                <br>
                <input type="text" placeholder="Doe" class="mx-2 mb-4 py-2 px-2 border-2">
                <br>
                <label for="email"class="mx-2">E-mail:</label>
                <br>
                <input type="email" placeholder="john.doe@gmail.com" class=" mx-2 mb-4 py-2 px-2 border-2">
                <br>
                <label for="password"class="mx-2">Password:</label>
                <br>
                <input type="password" placeholder="Create Password" class=" mx-2 mb-4 py-2 px-2 border-2">
                <br>
                <label for="confirm_pass"class="mx-2">Confirm Password:</label>
                <br>
                <input type="password" placeholder="Confirm Password" class=" mx-2 mb-4 py-2 px-2 border-2">
                <br>
                <label for="EMS Division"class="mx-2">EMS Division:</label>
                <br>
                <input type="text" placeholder="EMS Division" class=" mx-2 mb-4 py-2 px-2 border-2">
                <br>
                <label for="I.D Number"class="mx-2">I.D Number:</label>
                <br>
                <input type="text" placeholder="I.D Number" class=" mx-2 mb-4 py-2 px-2 border-2">
                <br>
                <label for="Local Region"class="mx-2">Local Region Presiding Over:</label>
                <br>
                <input type="text" placeholder="Local Region" class=" mx-2 mb-4 py-2 px-2 border-2">
                <br>
                <label for="Provice"class="mx-2">Province:</label>
                <br>
                <select class= "mx-2 mb-4 py-2 px-0.5 border-2">
                    <option value="select">Select</option>
                    <option value="ab">Alberta</option>
                    <option value="bc">British Columbia</option>
                    <option value="mb">Manitoba</option>
                    <option value="nb">New Brunswick</option>
                    <option value="nfl">Newfoundland and Labrador</option>
                    <option value="nt">Northwest Territories</option>
                    <option value="ns">Nova Scotia</option>
                    <option value="nv">Nunavut</option>
                    <option value="ot">Ontario</option>
                    <option value="pei">Prince Edward Island</option>
                    <option value="qb">Quebec</option>
                    <option value="sk">Saskatchewan</option>
                    <option value="yk">Yukon</option>
                </select>
                <br>
                <input  type="Submit" value="Register" class="border-2 cursor-pointer my-4 mx-16">
        </form>
         </div>
 </div>
</body>
@endsection