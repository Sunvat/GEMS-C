@extends('Layouts.RA-default')

@section('main')
<body>
   <div class = "flex flex-col justify-center items-center">
      <h1 class = "font-bold text-3xl text-Chared">
         Latest Emergency Information
      </h1>
      <br>
      <div>
        <button class = "group bg-slate-300 rounded-full hover:bg-slate-600 m-2">
            <a href="{{route('RA-Create-Update')}}" class="text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition">Create Update</a>
        </button>
      </div>
      <table class = "table-fixed border mx-24">
         <tr class = "border border-slate-500">
            <th class = "border border-slate-500">Region</th>
            <th class = "bordor border-slate-500">City</th>
            <th class = "border border-slate-500">Update</th>
         </tr>
         <tr>
            <th class = "border p-2 border-slate-500">Okanagan</th>
            <th class = "border p-2 border-slate-500">Kelowna</th>
            <th class = "border p-2 border-slate-500">Massive floodings along Okanagan Lake all residents living within 100 meters are to be evacuated while those within 100-200 meters are to prepare for possible evacuation.</th>
         </tr>
         <tr>
            <th class = "border p-2 border-slate-500">Vancouver Island</th>
            <th class = "border p-2 border-slate-500">Victoria</th>
            <th class = "border p-2 border-slate-500">Huge fires burning near victoria, residents on the northside are to prepare for evacutation to mainland.</th>
         </tr>
      </table>
   </div>
</body>
@endsection