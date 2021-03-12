<?php
require_once dirname(__FILE__) . "/admin/users/init.php";
require("header.php");
$db = DB::getInstance();
// echo "get";;;
$conteudo = $db->query("select * from conteudos where type = 4 order by id desc ")->results();
?>
<section class="header1 cid-s8HaGIkBjh" style="background-color: #04112b">
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-10 align-center">
                <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-2" style="color: white;">Historico de Lives</h1>
            </div>
        </div>
    </div>
</section>
<br>
<br>
<div class="container">
    <div class="row">
        <?php
        foreach ($conteudo as $item) {
            $splitUrl = explode("=", $item->link);
            $link = "https://www.youtube.com/embed/" . $splitUrl[1];
        ?>
            <div class="card col-12 col-md-6 col-lg-4" style="padding-top:2% ;">
                <div class="card-wrapper">

                    <div class="card-box">
                        <p class="card-title mbr-fonts-style mbr-bold display-6" style="padding-top: 5%"> <?= $item->title ?> </p>
                        <iframe width="330" height="190" src="<?= $link ?>" frameborder="0" allow="accelerometer; autoplay; 
                        clipboard-write; encrypted-media; gyroscope; 
                        picture-in-picture" allowfullscreen>
                        </iframe>
                    </div>
                </div>
            </div>
        <?php
        }
        ?>
    </div>
</div>
<?php require("footer.php"); ?>