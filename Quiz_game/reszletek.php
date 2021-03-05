<?php
    require_once "config.php";
    print_r($_GET);
    $orszag_id="";
    $sql="Select id,id_kontinensek,foto,orszag_id from reszletek where id_kontinensek={$_GET['id']} limit 1";
    $stmt=$db->query($sql);
    $str="";
    while($row=$stmt->fetch()){
        extract($row);
        $str.="<div><img src='{$foto}'></div>";
    }
    $sql="Select id, nev from orszagok where kontinens_id={$id_kontinensek}";
    $stmt=$db->query($sql);
    $str2="";
    while($row=$stmt->fetch()){
        extract($row);
        $str2.="<label>{$nev}</label>
        <input type='radio' name='orszag_id' value='{$id}'>";
    }
?>

<h1>Részletek</h1>

<div class="row justify-content-center">
    <div class="col-3 border">Back</div>
    <div class="col-6 border text-center"><?=$str?></div>
    <div class="col-3 border">Next</div>
    
</div>

<form method="post" id="orszagok">
    <?=$str2?>
    <input type="text" id="kitalalando_id" value="<?=$orszag_id?>" hidden>
</form>

<div id="output">
</div>

<script src="orszag.js">
</script>