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
     <header class = "fixed bg-orange-400 border broder-y-2 h-16 border-slate-500 top-0 left-0 right-0 z-12">
        <div class="flex justify-center items-center">
            <h1 class="text-xl font-bold text-slate-800">
                Glohaven Emergency Management System
            </h1>
        </div>
        <div class ="flex flex-auto justify-center items-center">
            <nav class="-mx-1">
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">
                    <a href="{{route('Home')}}" class="text-lg mx-2 text-slate-800 group-hover:text-orange-700 transition">Home</a>
                </button>
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">
                    <a href="{{route('Regions')}}" class="text-lg mx-2 text-slate-800 hover:text-orange-700 transition">Regions</a>
                </button>
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">
                    <a href="{{route('Log-In')}}" class="text-lg mx-2 text-slate-800 hover:text-orange-5700 transition">Log in</a>
                </button>
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">
                    <a href="{{route('Accommodations')}}" class="text-lg mx-2 text-slate-800 hover:text-orange-700 transition">Accommodations</a>
                </button>
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">        
                    <a href="{{route('Contact')}}" class = "text-lg mx-2 text-slate-800 hover:text-orange-700 transition">Contact</a>
                </button>
                <button class = "group bg-slate-400 rounded-full hover:bg-slate-600">
                    <a href="{{route('Create-Account')}}" class = "text-lg mx-2 text-slate-800 hover:text-orange-700 transition">Create Account</a>
                </button>
            </nav>
        </div>
     </header>

     <main class = "flex-grow">
        @yield('main')
     </main>
     
</body>
</html>