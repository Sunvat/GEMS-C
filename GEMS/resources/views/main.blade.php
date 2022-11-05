@extends('Layouts.default')

@section('main')
<body>
  <div class = "grid grid-cols-2 grid-row-2 gap-2">

    <div class = "">
      <br>
      <div class = "flex flex-row justify-center items-center">
        <div>
          <button class = "group bg-Glohaven-Orange rounded-full hover:bg-slate-600">
            <a href="{{route('Latest-Emergency-Updates')}}" class = "text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition"> Latest Emergancy Updates</a>
          </button>
        </div>
      </div>
    </div>

    <div>
      <div class = "flex flex-col justify-center items-center">
        <h1 class="text-xl font-black font-size:25px">Who We Are</h1>
          <p> The Glohaven Emergency Management Solution is a digital platform which makes it easier for disaster response personnel operating in Canada to manage information and resources well during times of emergency. 
            The website we are developing for GEMS functions as a booking system, comprising of organized lists of accommodations by their locations which groups or individuals could use to find and book nearby accommodations in case they need to evacuate from their homes due to emergencies such as wildfires, flooding, etc. 
            This website will be available only to emergency services such as the police, firefighters, paramedics etc.
          </p>
      </div>
    </div>

    <div>
      <div class = "flex flex-col justify-center items-center">
        <h1 class = "text-lg font-black font-size:15">Booking Contact</h1>
        <p>To book accomodations, or to get any help</p>
        <p>Call (xxx) xxx xxxx to speak with one of our Reservation agents</p>
      </div>
    </div>  
  
    <div>
      <div class = "flex flex-col justify-center items-center">
        <h1 class = "text-xl font-black font-size:25px"> RA Log In:</h1>
        <button class = "group bg-Glohaven-Orange rounded-full px-1 hover:bg-slate-600">
          <a href="{{route('Log-In')}}" class = "text-lg group-hover:text-Glohaven-Hovered">Log In</a>
        </button>
      </div>
    </div>

  </div>
</body>

@endsection
