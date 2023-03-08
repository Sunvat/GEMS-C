@extends('Layouts.default')

@section('main')

<br>
<div class = "flex flex-col justify-center items-center">  
    
    <?php

    require dirname(__DIR__, 3).'/database/selectFuncs.php';
    $contact = getContact();
    $region = mysqli_fetch_array(getRegionbyID($contact[0]));
    echo "<table class = \"table-fixed border mx-24\">
        <tr class = \"border border-slate-500\">
        <th class = \"border border-slate-500\">Region</th>
        <th class = \"bordor border-slate-500\">Contact</th>
        </tr>";

        while($row = $region){
        echo "<tr>";
        echo "<th class = \"border p-2 border-slate-500\">".$region[0]."</th>";
        echo "<th class = \"border p-2 border-slate-500\">".$row[1]."</th>";
        echo "</tr>";
    }
    echo "</table>";
    ?>
    
</div>
@endsection