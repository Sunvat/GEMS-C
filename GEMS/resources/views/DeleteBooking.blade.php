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
  delBooking($_GET["bookingID"]);
  header("Location: /Bookings");
  exit();
?>

</body>
@endsection
