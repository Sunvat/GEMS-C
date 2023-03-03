@extends('Layouts.default')
@section('main')
<body>
    <h1 class="flex flex-col justify-center items-center">Log in:</h1>
    <div>
    <form action="Login" method = post class="flex flex-col justify-center items-center">
        <label class="" for="workID">ID:</label>
        <input class="" type="text" name="workID" id="workID">
        <br>
        <label class="" for="password">Password</label>
        <input class="" type="password" name="password" id="password">
        <button type="submit" class="mt-2 border-2">Log In</button>
    </form>
    </div>
</body>
@endsection