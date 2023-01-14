@extends('Layouts.default')

@section('main')

<body>
  <div class = "grid grid-cols-2 grid-row-2 gap-2">

    <div  class = "flex flex-row justify-center items-center">
      <div>
        <div  class = "flex flex-col justify-center items-center">
          <h1 class="text-xl text-white font-size:25px p-2">Latest Emergency Updates/Information</h1>
          <button class = "group bg-gold rounded-full hover:bg-Lgreen">
            <a href="{{route('Latest-Emergency-Updates')}}" class = "text-lg mx-2 text-Dgreen group-hover:text-white transition"> Latest Emergency Updates</a>
          </button>
        </div>
      </div>
    </div>

    <div class = "my-10 py-10 flex flex-row justify-center items-center">
      <div class = "mx-10 flex flex-col justify-center items-center">
        <h1 class=" text-xl text-white font-size:25px">Who We Are</h1>
          <p class="text-white"> The Glohaven Emergency Management Solution is a digital platform which makes it easier for disaster response personnel operating in Canada to manage information and resources well during times of emergency. 
             Comprising of organized lists of accommodations by their locations, Emergency services can use these lists to find and book nearby accommodations in case they need to evacuate people. 
          </p>
      </div>
    </div>
  
    <div class = "h-60 flex flex-row justify-center items-center">
      <div class = "flex flex-col justify-center items-center">
        <h1 class = "text-xl font-black font-size:25px"> RA Log In:</h1>
        <button class = "group bg-Glohaven-Orange rounded-full px-1 hover:bg-slate-600">
          <a href="{{route('Log-In')}}" class = "text-lg group-hover:text-Glohaven-Hovered">Log In</a>
        </button>
      </div>
    </div>

    <div class = "h-60 flex flex-row justify-center items-center">
      <div class = "flex flex-col justify-center items-center">
        <h1 class = "text-xl font-black font-size:25px">Regions</h1>
        <button class = "group bg-Glohaven-Orange rounded-full px-1 hover:bg-slate-600">
          <a href="{{route('Regions')}}" class = "text-lg group-hover:text-Glohaven-Hovered">Regions</a>
        </button>
      </div>
    </div>  

  </div>
</body>

@endsection
