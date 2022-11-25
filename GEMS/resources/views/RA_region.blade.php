@extends('Layouts.default')

@section('main')

<br>
<form id="ChooseRegion">
<div class = "p-1 bg-Glohaven-Orange">
        <h1 class = "text-4xl">Submit a Booking Request</h1>
    </div>
    <p><b>Logged in as RA.</b></p>
    <br>
<label for="chooseRegion" class="block mb-2 text-large font-medium text-gray-900 dark:text-grey">Choose the region where you would like to book accommodation to begin:</label>

<select id="countries" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
<option value="">--Please choose an option--</option>
  <option value="Okanagan">Okanagan</option>
  <option value="Vancouver Island">Vancouver Island</option>
  <option value="Thompson Nicola">Thompson Nicola</option>
  <option value="Kootenay">Kootenay</option>
</select>
<br>
<br>
<div>
<button type="submit" value="Submit" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white">
  <a href="{{route('View-Accommodation')}}">Submit</button>
<br>
<button type="submit" value="Submit" class="mt-8 py-2 px-2 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white">
<a href="{{route('RA_region_create')}}">Create Region</a>
</button>
<br>
<button type="submit" value="Submit" class="mt-8 py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white">
<a href="{{route('Home')}}">Log Out</a>
</button>
</div>
</form>
</body>



@endsection
