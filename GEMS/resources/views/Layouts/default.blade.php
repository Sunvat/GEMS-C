<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glohaven Emergency Management System</title>
    @vite('resources/css/app.css')

</head>
<body class = "flex flex-col min-h-screen bg-gray-400" >
     <header class = "fixed bg-gray-400 top-0 left-5 right-0 z-50">
        <div class="container mx-auto">
            <h1 class="text-xl font-black">
                Glohaven Emergency Management System
            </h1>
            <nav class="-mx-1">
                <a href="{{route('Home')}}" class="text-lg mx-2 text-white hover:text-orange-400 transition">Home</a>
                <a href="{{route('Regions')}}" class="text-lg mx-2 text-white hover:text-orange-400 transition">Regions</a>
                <a href="{{route('Log-In')}}" class="text-lg mx-2 text-white hover:text-orange-400 transition">Log in</a>
                <a href="{{route('Accommodations')}}" class="text-lg mx-2 text-white hover:text-orange-400 transition">Accommodations</a>        
                <a href="{{route('Contact')}}" class = "text-lg mx-2 text-white hover:text-orange-400 transition">Contact</a>
                <a href="{{route('Create-Account')}}" class = "text-lg mx-2 text-white hover:text-orange-400 transition">Create Account</a>
               
            </nav>

        </div>
     </header>
     <main class = "flex-grow">
        @yield('main')
     </main>
     <footer>
        
    </footer>
</body>
</html>