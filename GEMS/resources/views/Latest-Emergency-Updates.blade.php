@extends('Layouts.default')

@section('main')
<body>
   <div class = "flex flex-col justify-center items-center">
      <h1 class = "font-bold text-3xl text-Chared">
         Latest Emergancy Information
      </h1>
      <br>
      <table class = "table-fixed border">
         <tr class = "border border-slate-500">
            <th class = "border border-slate-500">Region</th>
            <th class = "bordor border-slate-500">City</th>
            <th class = "border border-slate-500">Update</th>
         </tr>
         <tr>
            <th class = "border p-2">Okanagan</th>
            <th class = "border p-2">Kelowna</th>
            <th class = "border p-2">Massive floodings along Okanagan Lake all residents living within 100 kilometers are to be evacuated while those within 100-200 kilometers are to prepare for possible evacuation.</th>
         </tr>
      </table>
   </div>
</body>
@endsection