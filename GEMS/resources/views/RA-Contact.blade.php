@extends('Layouts.RA-default')

@section('main')
<br>
<div class = "flex flex-col justify-center items-center">
<div class = "bg-blak text-lg" >
        <h1>Contact Information for Regional Reservation Agent</h1>
    </div>
    <br>
    <div>
    <?php

    require dirname(__DIR__, 3).'/database/selectFuncs.php';

    $contact = getContact();
    
    echo "<table class = \"table-fixed border mx-24\">
        <tr class = \"border border-slate-500\">
        <th class = \"border border-slate-500\">Region</th>
        <th class = \"bordor border-slate-500\">Contact</th>
        </tr>";

       while($row = $contact->fetch_assoc()){

        $region = getRegionbyID($row['rID']);
        $Reg = mysqli_fetch_array($region);

        echo "<tr>";
       echo "<th class = \"border p-2 border-slate-500\">".$Reg[0]."</th>";
        echo "<th class = \"border p-2 border-slate-500\">".$row['PNumber']."</th>";
        echo "</tr>";
    }
    echo "</table>";

    ?>
    </div>
</div>
@endsection