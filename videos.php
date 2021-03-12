<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once dirname(__FILE__) . "/admin/users/init.php";
// require("admin/users/init.php");
require("header.php");
$db = DB::getInstance();

// echo "get";;;
$conteudo = $db->query("select * from conteudos where type = 5 order by id desc ")->results();
// dump( $conteudo );

?>

<!-- <section class="engine"> <a href="#">portfolio site templates</a></section> -->

<!-- <section class="mbr-section content4 cid-s8HaGIkBjh" id="content4-1w" style="background-color: #04112b;">

    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h1 class="align-center pb-3 mbr-bold mbr-fonts-style " style="color: white;">
                    Blog AFRAC
                </h1>
                <h3 class="mbr-section-subtitle align-center mbr-light mbr-fonts-style display-5"></h3>

            </div>
        </div>
    </div>
</section> -->

<nav class="navbar  navbar-expand-sm " 
style="background-color: #ffffff !important;padding-bottom:0% ">
    <!-- <button class="navbar-toggler" data-toggle="collapse" data-target=".navbars">
        <span class="navbar-toggler-icon"></span>
    </button> -->
    <div class="collapse navbar-collapse navbars" id="collapse_target1">
        <ul class="navbar-nav mx-auto" style="height: 40px;">
            <li class="nav-item-second" style=" background-color: #ececec;  ">
                <a class="nav-link" href="blog.php" id="menu-blog">
                    <p class="mbr-fonts-style mbr-bold display-4" style="color: #04112b;"> BLOG AFRAC</p>
                </a>
            </li>
            <li class="nav-item-second">
                <a class="nav-link" href="vitrine.php" id="menu-blog">
                    <p class="mbr-fonts-style mbr-bold display-4" style="color: #04112b;"> VITRINE DE MERCADO</p>
                </a>
            </li>
            <li class="nav-item-second">
                <a class="nav-link" href="meios-pagamento.php" id="menu-blog">
                    <p class="mbr-fonts-style mbr-bold display-4" style="color: #04112b"> MEIOS DE PAGAMENTO</p>
                </a>
            </li>

        </ul>
    </div>
</nav>

<section class="features3 cid-s8Hb30IPX6" 
id="features3-1fgg" style="padding: 2% 10% 0 10%;background-color:#ececec;">

    <!-- <div class="row">
        <div class="col-7"></div>
        <div class="col-3">
            <h2 class="mbr-fonts-style mbr-bold display-6" id="mais-populares">Mais Populares</h2>
        </div>
        <div class="col-2"></div>


    </div> -->
    <div class="parent">
        <div class="div1">
            <img src="assets/images/img-destaque-blog.jpg" alt="" style="width: 95%;">

        </div>
        <div class="div2">
        <a href="blog-full-content.php?id=<?= $conteudo[0]->id ?>">
                <div class="row">
                    <div class="col-4">
                        <img src="<?php echo 'admin/upload/'.$conteudo[0]->img; ?>" alt="" style="width: 110px;"></div>
                    <div class="col-8">
                        <p class="mbr-fonts-style mbr-bold display-6" id="p-blog" style="font-size: 12px; padding-top: 0% !important;">
                        <?php echo substr(strip_tags($conteudo[0]->title), 0, 155); ?>
                        
                        </p>
                    </div>
                </div>
            </a>
            <hr>
        </div>
        <div class="div3">
        <a href="blog-full-content.php?id=<?= $conteudo[1]->id ?>">
                <div class="row">
                    <div class="col-4">
                                               <img src="<?php echo 'admin/upload/'.$conteudo[1]->img; ?>" alt="" style="width: 110px;"></div>
                    <div class="col-8">
                        <p class="mbr-fonts-style mbr-bold display-6" id="p-blog" style="font-size: 12px;">
                        <?php echo substr(strip_tags($conteudo[1]->title), 0, 155); ?>
                        </p>
                    </div>
                </div>
            </a>
            <hr>
        </div>
        <div class="div4">
        <a href="blog-full-content.php?id=<?= $conteudo[2]->id ?>">
                <div class="row">
                    <div class="col-4">
                                               <img src="<?php echo 'admin/upload/'.$conteudo[2]->img; ?>" alt="" style="width: 110px;"></div>
                    <div class="col-8">
                        <p class="mbr-fonts-style mbr-bold display-6" id="p-blog" style="font-size: 12px;">
                        <?php echo substr(strip_tags($conteudo[2]->title), 0, 155); ?>
                        </p>
                    </div>
                </div>
            </a>
            <hr>
        </div>
        
        <div class="div5">
        <a href="blog-full-content.php?id=<?= $conteudo[3]->id ?>">
                <div class="row">
                    <div class="col-4">
                                               <img src="<?php echo 'admin/upload/'.$conteudo[3]->img; ?>" alt="" style="width: 110px;"></div>
                    <div class="col-8">
                        <p class="mbr-fonts-style mbr-bold display-6" id="p-blog" style="font-size: 12px;">
                        <?php echo substr(strip_tags($conteudo[3]->title), 0, 155); ?>
                        </p>
                    </div>
                </div>
            </a>
            <hr>
        </div>
        
        
<!--         
        <div class="div3">
            <a href="page-blog.php">
                <div class="row">
                    <div class="col-5">
                        <img src="assets/images/nrf.png" alt="" style="width: 80%;"></div>
                    <div class="col-5">
                        <p class="mbr-fonts-style mbr-bold display-6" id="p-blog" style="font-size: 17px;">
                            O que aprendemos com 680 mil atividades de prospecção
                        </p>
                    </div>
                </div>
            </a>
            <hr>
        </div>
        <div class="div4">
            <a href="page-blog.php">
                <div class="row">
                    <div class="col-5">
                        <img src="assets/images/nrf.png" alt="" style="width: 80%;"></div>
                    <div class="col-5">
                        <p class="mbr-fonts-style mbr-bold display-6" id="p-blog" style="font-size: 17px;">
                            O que aprendemos com 680 mil atividades de prospecção
                        </p>
                    </div>
                </div>
            </a>
            <hr>
        </div> -->
        <!-- <div class="div5">
            <a href="page-blog.php">
                <div class="row">
                    <div class="col-5">
                        <img src="assets/images/nrf.png" alt="" style="width: 80%;"></div>
                    <div class="col-5">
                        <p class="mbr-fonts-style mbr-bold display-6" id="p-blog" style="font-size: 17px;">
                            O que aprendemos com 680 mil atividades de prospecção
                        </p>
                    </div>
                </div>
            </a>

        </div> -->
    </div>

</section>




<br>
<br>
<section class="features3 cid-s8Hb30IPX6" id="features3-1f" style="padding: 0 6%;">
    <div class="container">
        <div class="media-container-row">


            <?php

            $countRow = 0;

            foreach ($conteudo as $content) {
                $countRow++;
            ?>

                <div class="card p-3 col-12 col-md-4 col-sm-12">
                    <div class="card-wrapper">
                        <div class="card-img">
                            <img src="admin/upload/<?= $content->img ?>" style="width: 85%;">
                        </div>
                        <div class="card-box">
                            <a href="blog-full-content.php?id=<?= $content->id ?>">
                                <p class="card-title mbr-fonts-style mbr-bold display-6">
                                    <?php echo $content->title; ?>
                                </p>
                            </a>
                            <p class="mbr-text mbr-fonts-style display-7">
                                <?php echo substr(strip_tags($content->content), 0, 300); ?>

                            </p>
                        </div>
                    </div>
                </div>

            <?php

                if (($countRow % 3) == 0) {
                    echo "      
                </div>
                <div class='media-container-row'> ";
                }
            }
            ?>


        </div>
    </div>

</section>



<?php require("footer.php"); ?>