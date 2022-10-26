@extends('Layouts.default')

@section('main')
 <form method ="post">
    <label for="id">Login ID</label>
    <input type="text" id = "id" name = "id">
    <label for="Password">Password</label>
    <input type="text" id = "id" name = "id">
    <input type="submit" value = "Login">
 </form>
@endsection
