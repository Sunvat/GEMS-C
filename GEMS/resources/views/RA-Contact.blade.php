@extends('Layouts.RA-default')

@section('main')
<br>
<div class = "flex flex-col justify-center items-center">

    <div class = "pt-14 mt-4 bg-Lgreen rounded-lg">
        <h1 class = "text-2xl text-white">Contact Information:</h1>
    </div>

    <div>
    <?php

    require dirname(__DIR__, 3).'/database/selectFuncs.php';
    $LEI = getContact();

    echo "<table class = \"table-fixed border mx-24 bg-white\">
        <tr class = \"border border-slate-500\">
            <th class = \"border border-slate-500\">Region</th>
            <th class = \"bordor border-slate-500\">Phone Number</th>
        </tr>";

    while($row = mysqli_fetch_array($LEI)){
        echo "<tr>";
        echo "<th class = \"border p-2 border-slate-500\">".$row[1]."</th>";
        echo "<th class = \"border p-2 border-slate-500\">".$row[3]."</th>";
        echo "<th class = \"border p-2 border-slate-500\">".$row[2]."</th>";
        echo "<th class = \"border p-2 border-slate-500\">
            <div class=\"inline-flex rounded-md shadow-sm group bg-slate-300 rounded-full hover:bg-slate-600 m-2\" role=\"group\">
                <button type=\"button\" name = \"Update\" id=\"Update\" onclick=\"location.href='/Update-LEI-RA?location=". $row[1]." ';\" class=\"text-lg mx-2 text-slate-800 hover:text-Glohaven-Hovered transition\">Update</button>
            </div></td>";
        echo "</tr>";
    }
    echo "</table>";
    ?>
    </div>
</div>
@endsection