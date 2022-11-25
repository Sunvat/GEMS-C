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
          <button type="button" onclick="location.href='/View-Accommodation';" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white">View</button>
          </div></td>
    </tr>
    </table>
  </div>
</div>
@endsection