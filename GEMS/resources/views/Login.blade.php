@extends('Layouts.default')
@section('main')
<body>
    <h1 class="font-semibold text-2xl flex flex-col justify-center items-center pb-5 text-white">Log in:</h1>
    <p class=" font-semibold text-xl flex flex-col justify-center items-center pb-5 text-white">Welcome back, please enter your detials</p>
    <div class="flex flex-col justify-center items-center rounded-md  drop-shadow-2xl">
     @if (session('status'))
        <div class="success">
        {{ session('status') }}
        </div>
        @endif
     @if ($errors->any())
     <div class="alert alert-danger flex flex-col justify-center items-center ">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
        </div>
     @endif


        <form action="Login" method = post class="flex flex-col justify-center items-center bg-white w-96 h-72 rounded-md ">
        <div class=" pb-5 font-semibold text-medium "><a class=" text-red-500 ">*</a>are required fields</div>
        @csrf
        <label class="pb-2 font-semibold text-medium" for="workID"><a class="font-bold text-red-500">*</a>ID:</label>
        <input class="border-2" type="text" name="workID" id="workID">
        @error('workID')
                <div class="danger font-bold text-red-500">{{ $message }}</div>
            @enderror
            
        <br>
        <label class="pb-2 font-semibold text-medium" for="password"><a class="font-bold text-red-500">*</a>Password</label>
        <input class="border-2" type="password" name="password" id="password">
        @error('password')
                <div class="danger font-bold text-red-500">{{ $message }}</div>
            @enderror
        <button type="submit" class="mt-5 border-1 border-white rounded-md px-5 bg-red-500 transition ease-in-out delay-150 bg-red-500 hover:-translate-y-1 hover:scale-110 hover:bg-orange-500 duration-300">Log In</button>
        
    </form>
    </div>
</body>
@endsection