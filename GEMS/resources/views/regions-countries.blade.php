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
    <?php
require dirname(__DIR__, 3).'/database/selectFuncs.php';

    $result = getRegion();

    echo "<label for=\"chooseRegion\" class=\"block mb-2 text-large font-medium text-gray-900 dark:text-grey\">Select a region to browse available accommodations in that region:</label>";
    echo "<select id=\"countries\" class=\"bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500\">";
  
    while($row = mysqli_fetch_array($result)){
      echo "<option value =" . htmlspecialchars($row['rname'], ENT_QUOTES, 'UTF-8') . ">" . htmlspecialchars($row['rname'], ENT_QUOTES, 'UTF-8') . "</option>";
    }
    echo"</select>";
?>

    <br>
    <br>

    <button class="py-2 px-4 text-sm font-medium text-white bg-Lgreen rounded-lg border border-2 border-Dgreen hover:bg-gold hover:text-Dgreen ing-Glohaven-Orange ">
    <a href = "{{route('Accommodations')}}">Submit</a>
    </button>
    
  </form>
</div>




@endsection
