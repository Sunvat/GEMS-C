@extends('Layouts.default')

@section('main')
<body>
   <div class = "flex flex-col justify-center items-center">
      <h1 class = "font-bold text-3xl text-Chared">
         Latest Emergancy Information
      </h1>
      <br>
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