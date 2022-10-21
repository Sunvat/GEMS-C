@extends('Layouts.default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
</head>
<body>
<b>
This is a test. Accommodations will not be accessed from the homepage directly.
</b></br>

#Below if statement will check if user is RA
<?php if (true) : ?>
  <div class="container">
        <a href="/Update">
            <span id="create-accommodation-button"
            style="background-color:#EC925D;color:#FFFFFF;padding-left:5px;padding-right:5px;">
            Update</span>
        </a>

        <span style="padding-left:10px"></span>

        <a href="/Accommodations">
            <span id="update-accommodation-button"
            style="background-color:#EC925D;color:#FFFFFF;padding-left:5px;padding-right:5px;">
            Delete</span>
        </a>
    </div>
<?php endif; ?>

</body>
@endsection