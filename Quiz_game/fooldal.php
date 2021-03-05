<?php
    require_once "config.php";
    $sql="Select id,nev,foto from kontinensek";
    $stmt=$db->query($sql);
    $str="";
    while($row=$stmt->fetch()){
        extract($row);
        $str.="<div class='col-md-6 col-lg-4 mb-5'>
                <img class='img-fluid' src='{$foto}'>
                <div class='btn btn-outline-success d-flex justify-content-center'><a href='index.php?p=reszletek.php&id={$id}'>{$nev}</a></div>
            </div>";
        
    }
?>
<!-- Portfolio Section-->
<section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Kontinensek</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Grid Items-->
                <div class="row justify-content-center">
                    <?=$str?>
                </div>
            </div>
</section>