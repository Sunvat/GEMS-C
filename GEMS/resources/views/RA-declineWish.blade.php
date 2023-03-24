@extends('Layouts.RA-default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>

<body>
<?php
  //Delete wish and return
  require dirname(__DIR__, 3).'/database/deleteFuncs.php';
  delWish($_GET["wishID"]);
  $rID = $_GET["rID"];
  header("Location: /RA-Bookings?rID=".$rID);
  exit();
?>

</body>
@endsection
