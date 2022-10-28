@extends('Layouts.default')
@section('main')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="app.css">
  <script>
    function deletePopup() {
        var r = confirm("Are you sure you want to delete this accommodation?");
        if (r == true) {
          window.location.href = "/Accommodations";
     }
        else {
     }
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
        <button type="button" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">Update</button>
        </a>

        <?php?>
        <button type="button" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered" onclick="deletePopup()">Delete</button>
          <p id="demo"></p>
        </div>


<?php endif; ?>

</body>
@endsection