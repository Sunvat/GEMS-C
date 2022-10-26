@extends('Layouts.default')

@section('main')
<div class = "flex justify-center items-center">
    <h1 class = " text-lg font-semibold text-slate-800">Please Log In(Only for Reservation Agents)</h1>
</div>
<div class = "flex flex-col items-center h-screen w-full py-4 ">
    <div>
        <form> <!-- dont forget to add a post or someother method when needed -->
            <!-- used to create the login id and password slots-->
            <div class = "py-2">
                <label for="id" class = "px-2 font-bold text-slate-700">Login ID</label>
                <input type="text" id = "id" name = "id" class="px-3 py-2 placeholder-slate-300 text-slate-600 relative bg-white bg-white rounded text-base border-0 shadow outline-none focus:outline-none focus:ring w-full"><br>  
            </div>
            <div>
                <label for="Password" class = "px-1 font-bold text-slate-700 ">Password</label>
                <input type="text" id = "id" name = "id" class = "px-3 py-2 placeholder-slate-300 text-slate-600 relative bg-white bg-white rounded text-base border-0 shadow outline-none focus:outline-none focus:ring w-full"><br>
            </div class = "py-2">
            <div class = "flex flex-col justify-center items-center"><!--center the login button -->
                <input type="submit" value = "Login" class = "font-bold text-slate-700"><br><!-- Login Button -->
            </div>
        </form>
    </div>
</div>

@endsection
