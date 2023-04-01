@extends('Layouts.default')

@section('main')
<!-- page used to display contact information to Users(EMS)-->
<br>
<div class = "flex flex-col justify-center items-center">  
    <div class = "bg-blak">
        <h1>Contact Information</h1>
    </div>
    <?php

    require dirname(__DIR__, 3).'/database/selectFuncs.php';
    //get contact information
    $contact = getContact();
    
    echo "<table class = \"table-fixed border mx-24\">
        <thead class = \" bg-blak/90\">
            <tr class = \"border border-slate-500\">
                <th class = \"border border-slate-500\">Region</th>
                <th class = \"bordor border-slate-500\">Contact</th>
            </tr>
        </thead>";
    // Convert sql_resualt to string and display
       while($row = $contact->fetch_assoc()){

        $region = getRegionbyID($row['rID']);
        $Reg = mysqli_fetch_array($region);

        echo "<tr class = bg-slate-300>";
        echo    "<th class = \"border p-2 border-slate-500\">".$Reg[0]."</th>";
        echo    "<th class = \"border p-2 border-slate-500\">".$row['PNumber']."</th>";
        echo "</tr>";
    }
    echo "</table>";

    ?>
</div>
@endsection