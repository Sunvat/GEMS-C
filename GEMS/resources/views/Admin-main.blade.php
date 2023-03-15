@extends('Layouts.RA-default')

@section('main')

<body>
  <br>
  <br>
  <span class = "flex flex-row justify-center items-center">
    <h1>
      Welcome RA of Glohaven
    </h1>
  </span>

  <br>
  <!-- this is to take us to LEI page for previous information-->
  <div  class = "flex flex-row justify-center items-center">
      <div  class = "flex flex-col justify-center items-center border rounded">
        <h1 class="text-xl font-black font-size:25px p-2">Latest Emergency Updates/Information</h1>
        <button class = "group rounded-full text-black border-2 border-gold transition ease-in-out delay-150  hover:-translate-y-1 hover:scale-110 hover:bg-Glohaven-Orange duration-100 mx-2">
          <a href="{{route('RA-LEI')}}" class = "text-lg mx-2 text-black group-hover:text-gold "> Latest Emergency Updates</a>
        </button>
     </div>
  </div>

</body>

@endsection