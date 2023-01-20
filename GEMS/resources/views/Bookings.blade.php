@extends('Layouts.RA-default')

@section('main')

<!DOCTYPE html>
<html>

<body>
    
<br>

<div class = "flex flex-col justify-center items-center">
<table class = "table-fixed border mx-10">
    <tr class = "bordor-slate-500 p-2">
      <th class = "border">Booking I.D</th>
      <th class = "border">Primary Evacuee Name</th>
      <th class = "border">Primary Evacuee Contact Number</th>
      <th class = "border">Number of People</th>
      <th class = "border">Accommodation Name</th>
      <th class = "bordor">Address</th>
      <th class = "border">Accommodation Capacity</th>
      <th class = "border">Caller Name</th>
      <th class = "border">Caller E.M.S Division/I.D Number</th> <!-- Blank if caller not EMS (public facing callers)-->
      <th class = "border">Caller Contact Number</th>
      <th class = "border">Pets Included</th>
      <th class = "border">Wheelchair Assistance</th>
      <th></th>
      <th></th>
    </tr>
    <tr>
        <td class = "border">12345</td>
        <td class = "border">John Cena</td>
        <td class = "border">2054556789</td>
        <td class = "border">4</td>
        <td class = "border">UNC</td>
        <td class = "bordor">1001 University Way, Kelowna, B.C</td>
        <td class = "border">50</td>
        <td class = "border">Fred Gomes</td>
        <td class = "border">Kelowna Fie Department/10342</td> <!-- Blank if caller not EMS (public facing callers)-->
        <td class = "border">2506773424</td>
        <td class = "border">No</td>
        <td class = "border">No</td>
        <td>
        <div class="inline-flex rounded-md shadow-sm">
        <button type="button" onclick="" class="py-2 px-5 text-sm font-medium text-white bg-Glohaven-Orange rounded-r-md border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white">Approve</button>
        </div></td>
        <td>
        <div class="inline-flex rounded-md shadow-sm">
        <button type="button" onclick="" class="py-2 px-5 text-sm font-medium text-white bg-Glohaven-Orange rounded-r-md border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white">Delete</button>
        </div></td>
    </tr>
    <tr>
        <td class = "border">12346</td>
        <td class = "border">Ben Edwards</td>
        <td class = "border">2059884590</td>
        <td class = "border">2</td>
        <td class = "border">UNC</td>
        <td class = "bordor">1001 University Way, Kelowna, B.C</td>
        <td class = "border">50</td>
        <td class = "border">Ben Edwards</td>
        <td class = "border"></td> <!-- Blank if caller not EMS (public facing callers)-->
        <td class = "border">2059884590</td>
        <td class = "border">No</td>
        <td class = "border">No</td>
        <td>
        <div class="inline-flex rounded-md shadow-sm">
        <button type="button" onclick="" class="py-2 px-5 text-sm font-medium text-white bg-Glohaven-Orange rounded-r-md border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white">Approve</button>
        </div></td>
        <td>
        <div class="inline-flex rounded-md shadow-sm">
        <button type="button" onclick="" class="py-2 px-5 text-sm font-medium text-white bg-Glohaven-Orange rounded-r-md border border-Glohaven-Orange hover:bg-Glohaven-Hovered hover:text-white focus:z-10 focus:ring-2 focus:ring-Glohaven-Orange focus:text-Glohaven-Orange dark:bg-Glohaven-Orange dark:border-Glohaven-Hovered dark:text-white dark:hover:text-white dark:hover:bg-Glohaven-Hovered dark:focus:Glohaven-Orange dark:focus:text-white">Delete</button>
        </div></td>
    </tr>
    
  </table>
</div>


</body>


@endsection
