@extends('Layouts.default')

@section('main')
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 13%;
  height: 800px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 15px;
  text-align: left;
}

th, td {
    font-size: 12px; 
  padding-left: 40px;
  padding-right: 40px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
  font-size: 20px;
  text-align: left;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 800px; /* only for demonstration, should be removed */
}

Aside {
  background-color: #FFFFFF;
  padding: 0px;
  text-align: center;
  color: black;
  height: 800px;
}

/* Clear floats after the columns */
section::after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>
 
<body class = "bg-gray-400" >

     <header class = "fixed bg-gray-400 top-0 left-0 right-0 z-50">
        <div class="container mx-auto">
            <h1 class="text-xl font-black" style="font-size:50px;">
                GLOHAVEN EMERGENCY MANAGEMENT SYSTEM
            </h1>
        </div> 
     </header>


        <section>
            <br>
            <br>
            <nav class="-mx-1">
                <ul>
                    <li><a href="{{route('Home')}}" class="text-lg mx-2 text-black hover:text-orange-400 transition">Home</a></li>
                    <br><li><a href="{{route('Regions')}}" class="text-lg mx-2 text-black hover:text-orange-400 transition">New Booking</a></li>
                    <br><li><a href="{{route('Log-In')}}" class="text-lg mx-2 text-black hover:text-orange-400 transition">Log in</a></li>
                </ul>
            </nav>

            <article>
                <hr>
                <table>
                    <tr>
                    <th><a href="{{route('Latest-Emergency-Updates')}}" class="text-m mx-1 text-black hover:text-orange-400 transition">Latest Emergency Updates</a></th>
                    <th>|</th>
                    <th><a href="{{route('Current-Evacuation-Plans')}}" class="text-m mx-1 text-black hover:text-orange-400 transition">Current Evacuation Plans</a></th>
                    <th>|</th>
                    <th><a href="{{route('Latest-Accommodation-Availabilities')}}" class="text-m mx-1 text-black hover:text-orange-400 transition">Latest Accommodation Availabilities</a></th>
                    </tr>
                 </table>    
                 <hr>
                <br>
                <br>
                <h1 class="text-xl font-black" style="font-size:25px;">Who We Are</h1>
                <br>
                    <p> The Glohaven Emergency Management Solution is a digital platform which makes it easier for disaster response personnel operating in Canada to manage information and resources well during times of emergency. 
                        The website we are developing for GEMS functions as a booking system, comprising of organized lists of accommodations by their locations which groups or individuals could use to find and book nearby accommodations in case they need to evacuate from their homes due to emergencies such as wildfires, flooding, etc. 
                        This website will be available only to emergency services such as the police, firefighters, paramedics etc.
                    </p>

             </article>

             <aside>
                <br>
                <br>
                <p> <font size=+2 ><b>For Emergencies:</b></font></p><br>
                <p> Please email GEMS@email.com</p>
                <p> Or</p>
                <p>Call ########### to speak with one of our Reservation agents</p>
            </aside>

        </section>

     
     <main>
        @yield('main')
     </main>

</body>
</html>



@endsection
