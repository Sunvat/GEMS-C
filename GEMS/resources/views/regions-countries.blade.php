@extends('Layouts.default')

@section('main')
<br>
<div class = "flex flex-col justify-center items-center">
  <div class = "my-14 p-1 bg-gold rounded-md">
    <h1 class = "bg-Dgreen text-3xl text-white p-2">Select Region</h1>
  </div> 
</div>

<div class = "flex flex-col jusify-center items-center">
  <form id="ChooseRegion">
    <br>
    <label for="chooseRegion" class="block mb-2 text-large font-medium text-white dark:text-grey">Select a region to browse available accommodations in that region:</label>

    <select id="countries" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
      <option value="none" selected disabled hidden>--Please choose an option--</option>
      <option value="Okanagan">Okanagan</option>
      <option value="Vancouver Island">Vancouver Island</option>
      <option value="Thompson Nicola">Thompson Nicola</option>
      <option value="Kootenay">Kootenay</option>
    </select>

    <br>
    <br>

    <button class="py-2 px-4 text-sm font-medium text-white bg-Lgreen rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange ">
    <a href = "{{route('Accommodations')}}">Submit</a>
    </button>
    
  </form>
</div>




@endsection
