@extends('Layouts.RA-default')

@section('main')

<body>
<p><b>Logged in as RA.</b></p>
  <div class = "grid grid-cols-2 grid-row-2 gap-2">
    <div  class = "flex flex-row justify-center items-center">
      <div>
        <div  class = "flex flex-col justify-center items-center">
          <h1 class="text-xl font-black font-size:25px p-2">Latest Emergency Updates/Information</h1>
          <button class = "border-2 border-gold group bg-Dgreen rounded-full hover:bg-Lgreen">
            <a href="{{route('RA-Latest-Update')}}" class = "text-lg mx-2 text-white group-hover:text-gold "> Latest Emergency Updates</a>
          </button>
        </div>
      </div>
    </div>

    <div class = "py-10 flex flex-row justify-center items-center">
      
    </div>
  
    <div class = "h-60 flex flex-row justify-center items-center">
      <div class = "flex flex-col justify-center items-center">
        <h1 class = "text-xl font-black font-size:25px"> Logged in as RA:</h1>
        <button class = "text-white group bg-Dgreen border-2 border-gold rounded-full px-1 hover:bg-Lgreen">
          <a href="{{route('Home')}}" class = "text-lg group-hover:text-gold">Logout</a>
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
