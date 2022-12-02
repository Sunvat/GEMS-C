
@extends('Layouts.default')

@section('main')
<body class="mx-auto pt-4">
<div>
    <div class=" w-fit mx-auto py-4 px-52 " id = "container">
        <form action="Create-Account"  method="POST">
                <label name ="fr_name" for="first_name" class="mx-2 font-bold text-slate-700">First Name:</label>
                <br>
                <input type="text" placeholder="John" class="mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label for="last_name"class="mx-2 font-bold text-slate-700">Last Name:</label>
                <br>
                <input type="text" placeholder="Doe" class="mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label for="email"class="mx-2 font-bold text-slate-700">E-mail:</label>
                <br>
                <input type="email" placeholder="john.doe@gmail.com" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label for="password"class="mx-2 font-bold text-slate-700">Password:</label>
                <br>
                <input type="password" placeholder="Create Password" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <p class = "mx-2 text-xs text-slate-700 ">New password must contain:<br>
                <ul class = " mx-6 text-xs list-disc text-slate-700">
                    <li>At least 8 characters</li>
                    <li>At least 1 lowercase character</li>
                    <li>At least 1 upper character</li>
                    <li>At least 1 number</li>
                    <li>At least 1 special character</li>
                </ul>
                </p>
                <br>
                <label for="confirm_pass"class="mx-2 font-bold text-slate-700">Confirm Password:</label>
                <br>
                <input type="password" placeholder="Confirm Password" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label for="EMS Division"class="mx-2 font-bold text-slate-700">EMS Division:</label>
                <br>
                <input type="text" placeholder="EMS Division" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label for="I.D Number"class="mx-2 font-bold text-slate-700">I.D Number:</label>
                <br>
                <input type="text" placeholder="I.D Number" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label for="Local Region"class="mx-2 font-bold text-slate-700">Local Region Presiding Over:</label>
                <br>
                <input type="text" placeholder="Local Region" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <label for="Provice"class="mx-2 font-bold text-slate-700">Province:</label>
                <br>
                <select class= "mx-2 mb-4 py-2 border-2 rounded">
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
                <label for="Confirmation Code"class="mx-2 font-bold text-slate-700">Confirmation Code: (Emailed to new assignee when new RA is assigned)</label>
                <br>
                <input type="text" placeholder="Confirmation Code" class=" mx-2 mb-4 py-2 px-2 border-2 rounded">
                <br>
                <br>
                <br>
                <br>
        </form>
        <div class = "flex flex-col justify-center items-center group bg-slate-300 rounded-full hover:bg-slate-600 w-25">
            <button>
                <a href="{{route('Account-Created')}}" class="text-lg mx-3 text-slate-800 group-hover:text-Glohaven-Hovered transition">Create Account</a>
            </button>
         </div>
         <br>
         <br>
         <br>
         <br>
    </div>
 </div>

</body>
@endsection