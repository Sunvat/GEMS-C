@extends('Layouts.RA-default')
@section('main')
<?php
session_start();
$_SESSION["loggedin"] = false;
 header("Location: /");
  exit();
?>

@endsection
