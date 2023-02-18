@extends('Layouts.default')

@section('main')

<body class>

  <div class = "grid grid-cols-2 ">

    <div  class = "h-60 flex justify-center ">
        <div  class = "flex flex-col justify-center items-center" style = "margin-right: -800px">
          <h1 class="text-xl text-black font-size:25px p-2">Latest Emergency Updates/Information</h1>
          <button class = " group rounded-full text-Glohaven-Orange border-2 border-gold transition ease-in-out delay-150  hover:text-white hover:-translate-y-1 hover:scale-110 hover:bg-Glohaven-Orange duration-100 mx-2 ">
            <a href="{{route('EMS-LEI')}} " class="mx-2 "> Latest Emergency Updates</a>
          </button> 
        </div>
   </div>
  </div>

  <!-- this is an exploration feature for you Akshaj let use that sidebar design we thought of in september   -->
  <?php
  //this code will be used to make the lei content on main page.
  echo "<div>";
  echo  "<table class = \"\">";
  echo  "  <th class = \"\">";
  echo  "   <tr class = \"\">";
  echo  "      <td class = \"\">";

  echo  "     </td>";
  echo  "   </tr>";
  echo  "  </th>";
  echo "</table>";
  echo "</div>";
?>
</body>

@endsection
