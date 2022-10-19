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

<?php if (true) : ?>
  <div class="container">
        <a href="/New">
            <span id="create-accommodation-button"
            style="background-color:#EC925D;color:#FFFFFF;padding-left:5px;padding-right:5px;">
            New Accommodation</span>
        </a>
    </div>
<?php endif; ?>

</body>
@endsection