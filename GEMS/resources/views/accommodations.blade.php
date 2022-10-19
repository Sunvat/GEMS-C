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
        <a href="/New">
            <span id="create-accommodation-button"
            style="background-color:#EC925D;color:#FFFFFF;padding-left:5px;padding-right:5px;">
            New Accommodation</span>
        </a>
    </div>
<?php endif; ?>
</br>
#Below button represents an accommodation in the database.</br>
<div class="container">
        <a href="/View-Accommodation">
            <span id="view-accommodation-button"
            style="background-color:#EC925D;color:#FFFFFF;padding-left:5px;padding-right:5px;">
            This is a placeholder accommodation!</span>
        </a>
    </div>

</body>
@endsection