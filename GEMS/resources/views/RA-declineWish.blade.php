@extends('Layouts.RA-default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>

<body>
<?php
  require dirname(__DIR__, 3).'/database/deleteFuncs.php';
  delWish($_GET["wishID"]);
  header("Location: /RA-Bookings");
  exit();
?>

</body>
@endsection
