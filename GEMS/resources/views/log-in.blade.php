@extends('Layouts.default')

@section('main')
<div class = "flex flex-col justify-center items-center">
    <form> <!-- dont forget to add a post or someother method when needed -->
        <fieldset>
            <label for="id" class = "px-2">Login ID</label>
            <input type="text" id = "id" name = "id" class="px-3 py-2 placeholder-slate-300 text-slate-600 relative bg-white bg-white rounded text-base border-0 shadow outline-none focus:outline-none focus:ring w-full"><br>  
            <label for="Password" class = "px-1 ">Password</label>
            <input type="text" id = "id" name = "id" class = "px-3 py-2 placeholder-slate-300 text-slate-600 relative bg-white bg-white rounded text-base border-0 shadow outline-none focus:outline-none focus:ring w-full"><br>
        </fieldset>
        <input type="submit" value = "Login"><br>
    </form>
</div>
@endsection
