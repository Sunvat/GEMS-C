@extends('Layouts.default')

@section('main')
<body >
            <br>
            <br>

            <article class = "border-transparent">
                <hr>
                  <table class = "border-0 rounded-mg">
                    <tr>
                      <th><a href="{{route('Latest-Emergency-Updates')}}" class="text-m mx-1 text-black hover:text-orange-400 transition">Latest Emergency Updates</a></th>
                      <th><a href="{{route('Current-Evacuation-Plans')}}" class="text-m mx-1 text-black hover:text-orange-400 transition">Current Evacuation Plans</a></th>
                      <th><a href="{{route('Latest-Accommodation-Availabilities')}}" class="text-m mx-1 text-black hover:text-orange-400 transition">Latest Accommodation Availabilities</a></th>
                    </tr>
                   </table>    
                 <hr>
              </article>
                <br>
                <br>
                <h1 class="text-xl font-black font-size:25px">Who We Are</h1>
                <br>
                    <p> The Glohaven Emergency Management Solution is a digital platform which makes it easier for disaster response personnel operating in Canada to manage information and resources well during times of emergency. 
                        The website we are developing for GEMS functions as a booking system, comprising of organized lists of accommodations by their locations which groups or individuals could use to find and book nearby accommodations in case they need to evacuate from their homes due to emergencies such as wildfires, flooding, etc. 
                        This website will be available only to emergency services such as the police, firefighters, paramedics etc.
                    </p>

             

             <aside>
                <br>
                <br>
                <p class = "font-black font-size:15">For Emergencies:</p>
                <p> Please email GEMS@email.com</p>
                <p> Or</p>
                <p>Call ########### to speak with one of our Reservation agents</p>
            </aside>

       

     
     <main>
        @yield('main')
     </main>

</body>
</html>



@endsection
