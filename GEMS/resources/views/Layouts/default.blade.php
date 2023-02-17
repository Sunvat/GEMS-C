<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glohaven Emergency Management System</title>
    <link rel="icon" src="https://github.com/Sunvat/GEMS-C/blob/main/GEMS/resources/images/gemslogo.jpg">
    @vite('resources/css/app.css')

     <header class = "fixed bg-gradient-to-b from-grey to-grey top-0 left-0 right-0 z-12 h-20">
        <div class="flex justify-left items-center h-20">
        <a href="{{route('Home')}}" class="flex items-center mb-4 sm:mb-0">
            <img src = "https://localhost/../images/glohavenlogo.png" class="h-20 py-2"/>
            <span class="self-center text-2xl font-serif font-bold whitespace-nowrap px-2 " style="color:#f6ad55">Glohaven Emergency Management Solutions</span>
        </a>
        <div class =" float-none flex flex-auto justify-center items-center" style = "margin-right: -300px">
            <nav class="-mx-1 float-none py-1.5">
                <button class = "group rounded-full text-Glohaven-Orange border-2 border-gold transition ease-in-out delay-150  hover:text-white hover:-translate-y-1 hover:scale-110 hover:bg-Glohaven-Orange duration-100 mx-2">
                    <a href="{{route('Home')}}" class="text-lg mx-2 group-hover:text-white">Home</a>
                </button> 
                <button class = "group rounded-full text-Glohaven-Orange border-2 border-gold transition ease-in-out delay-150  hover:text-white hover:-translate-y-1 hover:scale-110 hover:bg-Glohaven-Orange duration-100 mx-2">
                    <a href="{{route('Regions')}}" class="text-lg mx-2 group-hover:text-white">Regions</a>
                </button>
                <button class = "group rounded-full text-Glohaven-Orange border-2 border-gold transition ease-in-out delay-150  hover:text-white hover:-translate-y-1 hover:scale-110 hover:bg-Glohaven-Orange duration-100 mx-2">
                    <a href="{{route('Create-Account')}}" class="text-lg mx-2 group-hover:text-white">Create Account</a>
                </button>
                <button class = "group rounded-full text-Glohaven-Orange border-2 border-gold transition ease-in-out delay-150  hover:text-white hover:-translate-y-1 hover:scale-110 hover:bg-Glohaven-Orange duration-100 mx-2">       
                    <a href="{{route('Contact')}}" class="text-lg mx-2 group-hover:text-white">Contact</a>
                </button>
                <button class = "group rounded-full text-Glohaven-Orange border-2 border-gold transition ease-in-out delay-150  hover:text-white hover:-translate-y-1 hover:scale-110 hover:bg-Glohaven-Orange duration-100 mx-2">
                    <a href="{{route('Log-In')}}" class="text-lg mx-2 group-hover:text-white">Log in</a>
                </button>
            </nav>
            </div>
        </div>
     </header>
</head>

<body class = "float-none flex flex-col min-h-screen">
     <main class="flex-grow bg-cover bg-Dorange">
        @yield('main')
     </main>

</body>


     <footer class="fixed bottom-0 left-0 right-0 p-5 bg-gradient-to-b from-grey to-Lorange">
    <div class="sm:flex sm:items-center sm:justify-between">
        <a href="{{route('Home')}}" class="flex items-center mb-4 sm:mb-0">
            <span class="self-center text-2xl font-sans whitespace-nowrap" style="color:#f6ad55">Glohaven Emergency Management Solutions</span>
        </a>
        <ul class="flex flex-wrap items-center text-l text-white">
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
    <p class="text-l italic font-sans whitespace-nowrap text-white ">You cannot properly manage that, which you don't know you have.</p>
    
    <span class="block text-sm text-white sm:text-center dark:text-gray-700">© 2022 <a href="{{route('Home')}}" class="hover:underline">Glohaven™</a>. All Rights Reserved.
    </span>
</footer>

</html>