@extends('Layouts.RA-default')
@section('main')
<body>
<br>

<div class = "flex flex-col justify-center items-center">
  <div class = "p-1 bg-Glohaven-Orange rounded-md">
    <h1 class = "text-4xl">Update</h1>
  </div> 
</div>

<div class="container py-10 px-10 mx-0 min-w-full grid place-items-center" id = "container">
<form action="" method="get" id="updateForm">
  <label for="rname" class="mx-2 font-bold text-slate-700">Region Name:</label><br>
  <input type="text" id="rname" name="rname" placeholder="Okanagan" class="rounded p-2"><br>
  <label for="country" class="mx-2 font-bold text-slate-700">Country:</label><br>
  <input type="text" id="country" name="country" placeholder="Canada" class="rounded p-2"><br>
  <label for="provState" class="mx-2 font-bold text-slate-700">Province:</label><br>
  <input type="text" id="provState" name="provState" placeholder="BC" class="rounded p-2"><br>
 <br>
 <div class="md:flex md:items-center">
    <div class="md:w-1/3">
    </div>
    <div class="md:w-2/3">
      <input type="submit" name="submit" value="submit" class="py-2 px-4 text-sm font-medium text-white bg-Glohaven-Orange rounded-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-blue-500 dark:focus:text-white"></input>
    </div>
</form>

</div>
</body>
@endsection