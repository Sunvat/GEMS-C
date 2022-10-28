@extends('Layouts.default')
@section('main')
<!DOCTYPE html>
<html class = "ml-5">
    <head>
    <link rel="stylesheet" href="app.css">
    </head>
    <br>
    <body class="mx-auto pt-4">
    <p><b>Create an Account:</b></p>
    <div class="mx-auto w-96" id = "container">
        <form action="Create-Account" method="POST">
                @csrf
                <label name ="fr_name" for="first_name" class="mx-2">First Name:</label>
                <br>
                <input type="text" placeholder="John" class="mx-2 mb-4 py-2 px-2">
                <br>
                <label for="last_name"class="mx-2">Last Name:</label>
                <br>
                <input type="text" placeholder="Doe" class="mx-2 mb-4 py-2 px-2">
                <br>
                <label for="email"class="mx-2">E-mail:</label>
                <br>
                <input type="email" placeholder="john.doe@gmail.com" class=" mx-2 mb-4 py-2 px-2">
                <br>
                <label for="password"class="mx-2">Password:</label>
                <br>
                <input type="password" placeholder="Create Password" class=" mx-2 mb-4 py-2 px-2">
                <br>
                <label for="confirm_pass"class="mx-2">Confirm Password:</label>
                <br>
                <input type="password" placeholder="Confirm Password" class=" mx-2 mb-4 py-2 px-2">
                <br>
                <input  type="Submit" value="Register" class="border-2 cursor-pointer my-4 mx-16">
        </form>
    </div>
</body>
</html>


@endsection