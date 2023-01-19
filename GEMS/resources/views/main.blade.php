@extends('Layouts.default')

@section('main')

<body>
  <div class = "grid grid-cols-2 grid-row-2 gap-2">

    <div  class = "flex flex-row justify-center items-center">
      <div>
        <div  class = "flex flex-col justify-center items-center">
          <h1 class="text-xl text-white font-size:25px p-2">Latest Emergency Updates/Information</h1>
          <button class = " text-lg text-white  group bg-Dgreen rounded-full hover:bg-Lgreen border-2 border-gold ">
            <a href="{{route('Latest-Emergency-Updates')}} " class="mx-2 "> Latest Emergency Updates</a>
          </button> 
        </div>
      </div>
    </div>  
    <div class = "h-60 flex flex-row justify-center items-center">
      <div class = "flex flex-col justify-center items-center">
        <h1 class = "text-xl font-black text-white font-size:25px"> RA Log In:</h1>
        <button class = "px-2 group bg-Dgreen rounded-full text-white border-2 border-gold ">
          <a href="{{route('Log-In')}}" class = "text-lg ">Log In</a>
        </button>
      </div>
    </div>

  </div>
</body>

@endsection
