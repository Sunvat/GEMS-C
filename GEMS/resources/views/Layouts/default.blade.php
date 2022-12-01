<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glohaven Emergency Management System</title>
    <link rel="icon" src="GEMS-C\GEMS\resources\images\gemlogo.jpg">
    @vite('resources/css/app.css')

</head>
<body class = "flex flex-col min-h-screen bg-slate-400" >
     <header class = "fixed bg-Glohaven-Orange border broder-y-2 h-16 border-slate-500 top-0 left-0 right-0 z-12">
        <div class="flex justify-center items-center">
            <h1 class="text-xl font-bold text-slate-800">
                Glohaven Emergency Management System
            </h1>
        </div>
        <div class ="flex flex-auto justify-center items-center">
            <nav class="-mx-1">
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">
                    <a href="{{route('Home')}}" class="text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition">Home</a>
                </button>
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">
                    <a href="{{route('Regions')}}" class="text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition">Regions</a>
                </button>
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">
                    <a href="{{route('Log-In')}}" class="text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition">Log in</a>
                </button>
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">
                    <a href="{{route('Accommodations')}}" class="text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition">Accommodations</a>
                </button>
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">        
                    <a href="{{route('Contact')}}" class = "text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition">Contact</a>
                </button>
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">
                    <a href="{{route('Create-Account')}}" class = "text-lg mx-2 text-slate-800 group-hover:text-Glohaven-Hovered transition">Create Account</a>
                </button>
            </nav>
        </div>
     </header>

     <main class="flex-grow">
        @yield('main')
     </main>
     
     <br>
     <br>

     <footer class="p-8 bg-white shadow md:px-6 md:py-0.5 dark:bg-orange-300 flex flex-col h-min">
    <div class="sm:flex sm:items-center sm:justify-between">
        <a href="{{route('Home')}}" class="flex items-center mb-4 sm:mb-0">
            <img src="Glohaven Image.jpeg" class="mr-3 h-8" alt="Glohaven Logo" />
            <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">Glohaven Emergency Management Solutions</span>
        </a>
        <ul class="flex flex-wrap items-center mb-6 text-sm text-gray-500 sm:mb-0 dark:text-gray-700">
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
    <p class="text-l italic text-gray-700 ">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; You cannot properly manage that, which you don't know you have.</p>
    <hr class="my-6 border-gray-200 sm:mx-auto dark:border-gray-700 lg:my-8" />
    <span class="block text-sm text-gray-500 sm:text-center dark:text-gray-700">© 2022 <a href="{{route('Home')}}" class="hover:underline">Glohaven™</a>. All Rights Reserved.
    </span>
</footer>
</body>
</html>