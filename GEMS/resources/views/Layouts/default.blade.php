<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glohaven Emergency Management System</title>
    @vite('resources/css/app.css')

</head>
<body class = "bg-gray-400" >
     <header class = "fixed bg-gray-400 top-0 left-0 right-0 z-50">
        <div class="container mx-auto">
            <h1 class="text-xl font-black">
                Glohaven Emergancy Management System
            </h1>
            <nav class="-mx-2">
                <a href="{{route('Home')}}" class="text-lg mx-2 text-white hover:text-black transition">Home</a>
            </nav>
        </div>
     </header>
     <main>
        @yield('main')
     </main>
     <footer>
        footer
     </footer>
</body>
</html>