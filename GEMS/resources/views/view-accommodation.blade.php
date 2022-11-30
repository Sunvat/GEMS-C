@extends('Layouts.default')
@section('main')
<div class = "flex flex-col justify-center items-center p-2">
  <div>
    <h1 class = "font-bold text-3xl text-slate-700">UNC Information</h1>
  </div>

  <div>
    <table>
      <tr>
        <th id="ImgColumn">Location</th>
        <th id="AdressColumn"></th>
        <th id="CapColumn">Capacity</th>
      </tr>
      <tr>
        <td id="ImgColumn" height=100 width=100><img src="https://ok.ubc.ca/wp-content/uploads/sites/26/2018/02/unc-opens-2009-history.jpg" alt="accommodation"></td>
        <td id="AdressColumn">3272 University Way, Kelowna, BC V1V 1V7</td>
        <td id="CapColumn">50 people</td>
        <td id="ButtonColumn">
          <div class="inline-flex rounded-md shadow-sm" role="group">
          </div></td>
    </tr>
    </table>
  </div>
</div>
@endsection