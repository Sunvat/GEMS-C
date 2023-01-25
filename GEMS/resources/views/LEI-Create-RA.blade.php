@extends('Layouts.default')

@section('main')

<?php
if(isset($_POST['dropdown'])) {
  $selected = $_POST['dropdown'];
 

  
  header('Location: /RA-Create-Update');

}
?>
@endsection