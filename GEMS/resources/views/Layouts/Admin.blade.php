<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glohaven Emergency Management System</title>
    @vite('resources/css/app.css')
</head>
<body class = "flex flex-col min-h-screen bg-gradient-to-b from-Dgreen to-Lgreen" >
<header class = "fixed bg-Dgreen top-0 left-0 right-0 z-12">
        <div class="flex justify-center items-center">
            <h1 class="text-2xl font-bold text-Lgreen p-2">
                Glohaven Emergency Management System
            </h1>
        </div>
        <div class ="flex flex-auto justify-center items-center">
            <nav class="-mx-1">
            <button class = "group rounded-full text-white border-2 border-gold transition ease-in-out delay-150  hover:-translate-y-1 hover:scale-110 hover:bg-Lgreen duration-100 mx-2">
                    <a href="{{route('main-RA')}}" class="text-lg mx-2 group-hover:text-Glohaven-Hovered transition">Home</a>
                </button>
                <button class = "group rounded-full text-white border-2 border-gold transition ease-in-out delay-150  hover:-translate-y-1 hover:scale-110 hover:bg-Lgreen duration-100 mx-2">
                    <a href="{{route('RA_region')}}" class="text-lg mx-2  hover:text-Glohaven-Hovered transition">Regions</a>
                </button>
                <button class = "group rounded-full text-white border-2 border-gold transition ease-in-out delay-150  hover:-translate-y-1 hover:scale-110 hover:bg-Lgreen duration-100 mx-2">       
                    <a href="{{route('RA-Contact')}}" class = "text-lg mx-2  hover:text-Glohaven-Hovered transition">Contact</a>
                </button>
                <button class = "group rounded-full text-white border-2 border-gold transition ease-in-out delay-150  hover:-translate-y-1 hover:scale-110 hover:bg-Lgreen duration-100 mx-2"> 
                    <a href="{{route('RA-Booking')}}" class ="text-lg mx-2  hover:text-Glohaven-Hovered transition">Make Booking</a>
                </button>
                <button class = "group rounded-full text-white border-2 border-gold transition ease-in-out delay-150  hover:-translate-y-1 hover:scale-110 hover:bg-Lgreen duration-100 mx-2">
                    <a href="{{route('Bookings')}}" class ="text-lg mx-2  hover:text-Glohaven-Hovered transition">Bookings Waitlist</a>
                </button>
                <button class = "group rounded-full text-white border-2 border-gold transition ease-in-out delay-150  hover:-translate-y-1 hover:scale-110 hover:bg-Lgreen duration-100 mx-2">
                    <a href="{{route('Home')}}" class ="text-lg mx-2  hover:text-Glohaven-Hovered transition">Log out</a>
                </button>
            </nav>
        </div>
     </header>

     <main class="flex-grow">
        @yield('main')
     </main>
     <br>
     <br>

     <footer class="p-5 bg-gradient-to-b from-Lgreen to-Dgreen ">
    <div class="sm:flex sm:items-center sm:justify-between">
        <a href="{{route('Home')}}" class="flex items-center mb-4 sm:mb-0">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvBCu8PJ1o41yD0tynwPfEO4sJ9qzu9igB85bzeOjnxQ&s" class="mr-4 h-10" />
            <span class="self-center text-2xl font-semibold whitespace-nowrap ">Glohaven Emergency Management Solutions</span>
        </a>
        <ul class="flex flex-wrap items-center text-lg text-white">
            <li>
                <a href="{{route('Home')}}" class="mr-4 hover:underline md:mr-6 ">About</a>
            </li>
            <li>
                <a href="#" class="mr-4 hover:underline md:mr-6">Privacy Policy</a>
            </li>
            <li>
                <a href="#" class="mr-4 hover:underline md:mr-6 ">Licensing</a>
            </li>
            <li>
                <a href="{{route('Contact')}}" class="hover:underline">Contact</a>
            </li>
        </ul>
    </div>
    <p class="text-l italic text-white ">You cannot properly manage that, which you don't know you have.</p>
    
    <span class="block text-sm sm:text-center text-gray-700">© 2022 <a href="{{route('Home')}}" class="hover:underline">Glohaven™</a>. All Rights Reserved.
    </span>
</footer>
</body>
</html>