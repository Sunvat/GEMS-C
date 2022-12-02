@extends('Layouts.default')

@section('main')

<body>
  <div class = "grid grid-cols-2 grid-row-2 gap-2">

    <div  class = "flex flex-row justify-center items-center">
      <div>
        <div  class = "flex flex-col justify-center items-center">
          <h1 class="text-xl font-black font-size:25px p-2">Latest Emergency Updates/Information</h1>
          <button class = "group bg-Glohaven-Orange rounded-full hover:bg-slate-600">
            <a href="{{route('Latest-Emergency-Updates')}}" class = "text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition"> Latest Emergency Updates</a>
          </button>
        </div>
      </div>
    </div>

    <div class = "py-10 flex flex-row justify-center items-center">
      <div class = "flex flex-col justify-center items-center">
        <h1 class="text-xl font-black font-size:25px">Who We Are</h1>
          <p> The Glohaven Emergency Management Solution is a digital platform which makes it easier for disaster response personnel operating in Canada to manage information and resources well during times of emergency. 
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
      <div>
        <div class = "flex flex-col justify-center items-center">
          <h1 class = "text-lg font-black font-size:15">Booking Contact</h1>
          <p>To book accomodations, or to get any help</p>
          <p>Call (xxx) xxx xxxx to speak with one of our Reservation agents</p>
        </div>
      </div>
    </div>  

  </div>
</body>

@endsection
