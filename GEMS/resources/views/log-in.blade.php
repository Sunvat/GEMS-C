@extends('Layouts.default')

@section('main')
<div class = "flex justify-center items-center p-4">
    <h1 class = " text-lg font-semibold text-slate-800">Please Log In(Only for Reservation Agents)</h1>
</div>
<div class = "flex flex-col items-center h-screen w-full ">
    <div>
        <form> <!-- dont forget to add a post or someother method when needed -->
            <!-- used to create the login id and password slots-->
            <div class = "py-2">
                <label class = "px-2 font-bold text-slate-700">Login ID</label>
                <input type="text" id = "id" name = "id" class="px-3 py-2 placeholder-slate-300 text-slate-600 relative bg-white bg-white rounded text-base border-0 shadow outline-none focus:outline-none focus:ring w-full"><br>  
            </div>
            <div>
                <label for="Password" class = "px-1 font-bold text-slate-700 ">Password</label>
                <input type="text" id = "id" name = "id" class = "px-3 py-2 placeholder-slate-300 text-slate-600 relative bg-white bg-white rounded text-base border-0 shadow outline-none focus:outline-none focus:ring w-full"><br>
            </div class = "py-2">
            <br>
            <div class = "flex flex-col justify-center items-center"><!--center the login button -->
                <button class="font-bold text-slate-700 bg-Glohaven-Orange rounded-full">
                    <a href ="{{route('main-RA')}}" >Login</a>
                </button><br><!-- Login Button -->
            </div>
        </form>
    </div>
    <div class = "flex gap-1">
        <div>
            <h1 class = "text-lg font-semibold text-slate-800">Don't have an account yet. No worries, create an account here:</h1>
        </div>
        <div>
            <button>
                <a href="{{route('Create-Account')}}" class =" font-bold text-slate-700 bg-Glohaven-Orange rounded-full hover:bg-slate-600 p-1">Create Account</a>
            </button>
        </div>
    </div>
</div>

@endsection
