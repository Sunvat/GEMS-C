@extends('Layouts.RA-default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>

<body>
<?php
  // deletes lei and returns back to main page.
  require dirname(__DIR__, 3).'/database/deleteFuncs.php';

  delLEI($_GET["rID"], $_GET("LEI"), $_get("Datetime"));

  header("Location: /RA-LEI");
  exit();
?>

</body>
@endsection