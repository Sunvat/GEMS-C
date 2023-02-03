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
  delAcc($_GET["ID"]);
  header("Location: /RA-Accommodations?rID=".$_GET["rID"]);
  exit();
?>

</body>
@endsection
