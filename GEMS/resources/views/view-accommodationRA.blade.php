@extends('Layouts.RA-default')
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
<?php if (true) : ?>
<b>
This is a test. Accommodations will not be accessed from the homepage directly.
</b></br>
<a href="/Booking">
  <button type="button" class="focus:outline-none text-white bg-Glohaven-Orange hover:bg-Glohaven-Hovered focus:ring-4 focus:ring-Glohave-Orange font-medium rounded-lg text-sm px-3 py-2 mr-2 mb-2 dark:focus:ring-Glohaven-Hovered">Book Now</button>
</a>
</br>

</br>
  <div class="inline-flex rounded-md shadow-sm" role="group">
      <button type="button" onclick="location.href='/Update';" class="py-2 px-4 text-sm font-medium text-white bg-white rounded-l-lg border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:ring-Glohaven-Orange dark:focus:text-white">Update</button>
      <button type="button" onclick="deletePopup()" class="py-2 px-4 text-sm font-medium text-white bg-white rounded-r-md border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white">Delete</button>
    </div></td>

<?php endif; ?>

</body>
@endsection