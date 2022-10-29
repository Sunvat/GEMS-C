@extends('Layouts.default')

@section('main')


<body class = "">
   
This page is the regions page where the EMS can select regions from homepage
<br>
<br>
This is a test. Regions should be filled in based on regions that RA's handle.
<br>
<br>
<br>
<form id="ChooseRegion">
<label for="chooseRegion">Choose region to begin booking accommodation:</label>
    
<select name="region" id="region">
<option value="">--Please choose an option--</option>
  <option value="Okanagan">Okanagan</option>
  <option value="Vancouver Island">Vancouver Island</option>
  <option value="Thompson Nicola">Thompson Nicola</option>
  <option value="Kootenay">Kootenay</option>
</select>

<br>
<input type="submit" value="Submit" class = "border solid 3px;display block; mt-5 font-bold">
</form>
</body>


@endsection
