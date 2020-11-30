<?php
$strOp="";
$strSorok="";
include "autokereskedes.class.php";
$file=new SplFileObject("autok.txt");               ///beolvasás
$autok=[];
while(!$file->eof()){
    $sor=$file->fgets();
    $tomb=explode(";",$sor);
    $autok[]=new Auto($tomb[0],$tomb[1],$tomb[2],$tomb[3],$tomb[4],$tomb[5]);
}
//print_r($autok);
$markaTomb=[];
foreach($autok as $auto)
    $markaTomb[]=$auto->nev;
//echo "<hr>";
//print_r($markaTomb);
//echo "<hr>";
$markaTomb=array_unique($markaTomb);
sort($markaTomb);
//print_r($markaTomb);

foreach($markaTomb as $markaNev)
    $strOp.="<option>".$markaNev."</option>";

    //szures
    //print_r($_POST);
    $szurtTomb=[];
    if(isset($_POST["szures"])){
        $nev=$_POST["marka"];
        foreach($autok as $auto)
            if($auto->nev==$nev) $szurtTomb[]=$auto;

       // print_r($szurtTomb);
        foreach($szurtTomb as $auto)
                $strSorok.=$auto->htmlTablazatSor();
    }
?>  



<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css" />
    <script src="bootstrap/jquery.min.js"></script>
    <script src="bootstrap/bootstrap.min.js"></script>
    <title>Autó kereskedés</title>
    <style>
        /*.jumbotron{
            background: linear-gradient(to bottom, rgba(255,255,255,0.4), rgba(255,255,255,0.9)),url(honda.jpg) center no-repeat;
            background-size: cover;
        }*/
        /*.container-fluid{
            max-width:900px;
            min-height:600px;
        }*/
        input{
            display: block;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <h1 class="text-center">Autókereskedés - kínálat</h1>
    <div class="row justify-content-center">
        <form method="post">
        <div class="input-group">
                <select class="custom-select" name="marka" id="">
                <option value="0">Válassz márkát......</option>
                    <?=$strOp?>
                </select> 
                <div class="input-group-append">
                    <input type="submit" class="btn btn-outline-primary" name="szures" value="szűrés">
                </div>
        </div>
        </form>
    </div>
    <hr>
    <div class="row justify-content-center">
        <div class="col-auto">
    <table class="table table-responsive table-bordered text-center">
        <thead class="table-dark"><th>Márka</th><th>Évjárat</th><th>Ajtók száma</th><th>Szín</th><th>Üzemanyag</th><th>Fogyasztása</th></thead>
        <tbody><?=$strSorok?></tbody>
    </table>
</div>
</div>
</div>
<hr>
<div class="row justify-content-center">
    <div class="col-auto">
        <h4>TANKOLJ ENNYIT!</h4>
    </div>
        <div>
        <label for="">Utad hossza: (km-ben)</label>
        <input type="number" name="km" id="km">
        <br>
        <label for="">Autód fogyasztása:  (L/100km)</label> 
        <input type="number" name="fogy" id="fogy">
        <br>
        <label for="">Az úthoz minimum üzemanyag: (L)</label> 
        <input type="text" name="liter" id="liter">
        </div>
</div>
<hr>
</body>
</html>