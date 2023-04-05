<?php
session_start();

if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] == false) {
    header('Location: /');
    die();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glohaven Emergency Management System</title>
       <link rel="icon" src="https://github.com/Sunvat/GEMS-C/blob/main/GEMS/resources/images/gemslogo.jpg">
    @vite('resources/css/app.css')
</head>
<body class = "float-none flex flex-col min-h-screen bg-orange bg-cover">
<aside id="default-sidebar" class=" fixed top-0 left-0 z-0 w-75 h-full w-2/12 transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
   <div class="h-full px-3 py-4 overflow-y-auto bg-white-10 border">
   <a href="{{route('Home')}}" class="flex items-center mb-4 sm:mb-0">
            <figure>
            <img src = "{{ asset('/images/GEMS.jpg') }}" class="w-40"/>
            </figure>
            
        </a>
      <ul class="space-y-2">
        <br>
        
         <li>
            <a href="{{route('main-RA')}}" class="flex items-center p-2 text-base font-normal text-black rounded-lg hover:bg-black hover:text-white">
               <svg aria-hidden="true" class="w-6 h-6 text-gray-500 transition duration-75 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M2 10a8 8 0 018-8v8h8a8 8 0 11-16 0z"></path><path d="M12 2.252A8.014 8.014 0 0117.748 8H12V2.252z"></path></svg>
               <span class="ml-3">Home</span>
            </a>
         </li>
         <li>
            <a href="{{route('RA_region')}}" class="flex items-center p-2 text-base font-normal text-black rounded-lg hover:bg-black hover:text-white">
               <svg aria-hidden="true" class="w-6 h-6 text-gray-500 transition duration-75 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"></path></svg>
               <span class="flex-1 ml-3 whitespace-nowrap">Regions</span>
            </a>
         </li>
         <li>
            <a href="{{route('Bookings-Regions')}}" class="flex items-center p-2 text-base font-normal text-black rounded-lg hover:bg-black hover:text-white">
               <svg aria-hidden="true" class="w-6 h-6 text-gray-500 transition duration-75 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"></path></svg>
               <span class="flex-1 ml-3 whitespace-nowrap">Bookings</span>
            </a>
         </li>
         <li>
            <a href="{{route('RA-Contact')}}" class="flex items-center p-2 text-base font-normal text-black rounded-lg hover:bg-black hover:text-white">
               <svg aria-hidden="true" class="w-6 h-6 text-gray-500 transition duration-75 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"></path></svg>
               <span class="flex-1 ml-3 whitespace-nowrap">Contact</span>
            </a>
         </li>
         <?php
       if (isset($_SESSION['adminsession']) && $_SESSION['adminsession'] == true) {
         echo "
        <li>
           <a href=\"".route('Create-Account')."\" class=\"flex items-center p-2 text-base font-normal text-black rounded-lg hover:bg-black hover:text-white\">
              <svg aria-hidden=\"true\" class=\"w-6 h-6 text-gray-500 transition duration-75 group-hover:text-white\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\"><path fill-rule=\"evenodd\" d=\"M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z\" clip-rule=\"evenodd\"></path></svg>
              <span class=\"flex-1 ml-3 whitespace-nowrap\">Create Account</span>
           </a>
        </li>";
       }
        
         ?>
         <li>
            <a href="{{route('logout')}}" class="flex items-center p-2 text-base font-normal text-black rounded-lg hover:bg-black hover:text-white">
               <svg aria-hidden="true" class="w-6 h-6 text-gray-500 transition duration-75 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"></path></svg>
               <span class="flex-1 ml-3 whitespace-nowrap">Log-Out</span>
            
            </a>
         </li>
      </ul>
   </div>
  </aside>
     <main class="flex-grow">
        @yield('main')
     </main>

</body>
   

<footer class="bg-black bottom-0 left-0 right-0 z-40 p-3 h-30 ">
    <div class="sm:flex sm:items-center sm:justify-between">
        <a href="{{route('Home')}}" class="flex items-center mb-4 sm:mb-0">
            <span class="self-center text-xl font-sans whitespace-nowrap" style="color:#f6ad55">Glohaven Emergency Management Solutions</span>
        </a>
        <ul class="flex flex-wrap items-center text-sm text-white">
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