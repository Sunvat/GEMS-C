@extends('Layouts.RA-default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>

<body>
<?php
  //Approve wish then return
  require dirname(__DIR__, 3).'/database/updateFuncs.php';
  confirmDenyBooking(1, $_GET["bookingID"]);
  $rID = $_GET["rID"];
  header("Location: /RA-Bookings?rID=".$rID);
  exit();
?>

</body>
@endsection