@extends('Layouts.RA-default')

@section('main')

<body>
<p><b>Logged in as RA.</b></p>
  
    <div  class = "flex flex-row justify-center items-center">
      <div>
        <div  class = "flex flex-col justify-center items-center border rounded">
          <h1 class="text-xl font-black font-size:25px p-2">Latest Emergency Updates/Information</h1>
          <button class = "border-2 border-gold group bg-Dgreen rounded-full hover:bg-Lgreen m-4">
            <a href="{{route('RA-Latest-Update')}}" class = "text-lg mx-2 text-white group-hover:text-gold "> Latest Emergency Updates</a>
          </button>
        </div>
      </div>
  </div>
</body>

@endsection
