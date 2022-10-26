@extends('Layouts.default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
  <script>
    function deletePopup() {
        var x;
        var r = confirm("Are you sure you want to delete this accommodation?");
        if (r == true) {
         x = "You pressed OK!";
     }
        else {
         x = "You pressed Cancel!";
     }
     document.getElementById("demo").innerHTML = x;
}
</script>
</head>
<body>
<b>
This is a test. Accommodations will not be accessed from the homepage directly.
</b></br>

#Below if statement will check if user is RA
<?php if (true) : ?>
  <div class="container">
        <a href="/Update">
            <span id="update-accommodation-button"
            style="background-color:#EC925D;color:#FFFFFF;padding-left:5px;padding-right:5px;">
            Update</span>
        </a>

        <?php?>
          <button style="background-color:#EC925D;color:#FFFFFF;padding-left:5px;padding-right:5px;" onclick="deletePopup()">Delete</button>
          <p id="demo"></p>
        </div>


<?php endif; ?>

</body>
@endsection