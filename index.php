<?php

// require("header.php"); 


// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);

require_once dirname(__FILE__) . "/admin/users/init.php";
// require("admin/users/init.php");
require("header.php");
$db = DB::getInstance();

// echo "get";;;
$conteudoVitrine = $db->query("select * from conteudos where type = 2 order by id desc limit 5 ;")->results();
$conteudoBlog   = $db->query("select * from conteudos where type = 1 order by id desc limit 5 ;")->results();
// dump( $conteudo );




?>


<!-- <section class="engine"> <a href="#">portfolio site templates</a></section> -->

<section class="carousel slide cid-s7i3pHw5lL" data-interval="false" id="slider1-l">
    <div class="full-screen">
        <div class="mbr-slider slide carousel" data-keyboard="false" data-ride="carousel" data-interval="8000" data-pause="hover">
            <ol class="carousel-indicators">
                <!-- <li data-app-prevent-settings="" data-target="#slider1-l" data-slide-to="0"></li> -->
                <!-- <li data-app-prevent-settings="" data-target="#slider1-l" data-slide-to="1"></li> -->
                <!-- <li data-app-prevent-settings="" data-target="#slider1-l" class=" active" data-slide-to="2"></li> -->
            </ol>

            <div class="carousel-inner" role="listbox">


                <div class="carousel-item slider-fullscreen-image " data-bg-video-slide="false" style="background-image: url(assets/images/banners/banner_08.jpg);">
                    <div class="container container-slide">
                        <div class="image_wrapper">
                            <img class="img-banner" src="assets/images/banners/banner_08.jpg" alt="" title="">
                            <div class="carousel-caption justify-content-center" style="padding-left: 20%;">
                                <div class="row-logo" style="width:85%; display: flex; height: auto !important; ">
                                    <div class="col-lg-3 col-sm-4 col-md-4 img-logo ">
                                        <img src="assets/images/banners/logo_banner_08.png" alt="">
                                    </div>
                                    <div class="col-10 text-logo">
                                        <h2 class="mbr-fonts-style display-2" id="texto-banners">
                                            <strong>
                                                UM NOVO VISUAL
                                            </strong>
                                        </h2>
                                        <p class="lead mbr-text mbr-fonts-style display-5" id="texto-banners">
                                            Para receber o futuro!
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>





                <div class="carousel-item slider-fullscreen-image active" data-bg-video-slide="false" style="background-image: url(assets/images/banners/banner_01.jpg);">
                    <div class="container container-slide">
                        <div class="image_wrapper">
                            <!-- <div class="mbr-overlay" style=""></div> -->
                            <img class="img-banner" src="assets/images/banners/banner_01.jpg" alt="" title="">
                            <div class="carousel-caption justify-content-center" style="padding-left: 15%;">
                                <div class="row-logo" style="width:85%; display: flex; height: auto !important; ">
                                    <div class="col-lg-3 col-sm-4 col-md-4 img-logo ">
                                        <img src="assets/images/banners/logo_banner_01.png" alt="">
                                    </div>
                                    <div class="col-10 text-logo">
                                        <h2 class="mbr-fonts-style display-2" id="texto-banners">
                                            <strong>
                                                Bem vindo ao futuro
                                            </strong>
                                        </h2>
                                        <p class="lead mbr-text mbr-fonts-style display-5" id="texto-banners">

                                            Associação Brasileira de Tecnologia
                                            <br>
                                            para o Comércio e Serviços

                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item slider-fullscreen-image " data-bg-video-slide="false" style="background-image: url(assets/images/banners/banner_02.jpg);">

                    <a href="https://ofertas.afrac.com.br/nrf2021-delegacao-afrac" target="_blank">

                        <div class="container container-slide">
                            <div class="image_wrapper">
                                <img class="img-banner" src="assets/images/banners/banner_02.jpg" alt="" title="">
                                <div class="carousel-caption justify-content-center" style="padding-left: 15%;">
                                    <div class="row-logo" style="width:85%; display: flex; height: auto !important; ">
                                        <div class="col-lg-3 col-sm-4 col-md-4 img-logo ">
                                            <img src="assets/images/banners/logo_banner_02.png" alt="">
                                        </div>
                                        <div class="col-10 text-logo">
                                            <h2 class="mbr-fonts-style display-2" id="texto-banners">
                                                <strong>

                                                    <br>
                                                    A Delegação AFRAC
                                                    <br>
                                                    estará por lá!

                                                </strong>
                                            </h2>
                                            <p class="lead mbr-text mbr-fonts-style display-5" id="texto-banners">
                                                Fique por dentro e participe
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                </div>

                </a>



                <div class="carousel-item slider-fullscreen-image " data-bg-video-slide="false" style="background-image: url(assets/images/banners/banner_03.jpg);">
                    <div class="container container-slide">
                        <div class="image_wrapper">
                            <img class="img-banner" src="assets/images/banners/banner_03.jpg" alt="" title="">
                            <div class="carousel-caption justify-content-center" style="padding-left: 19%;">
                                <div class="row-logo" style="width:85%; display: flex; height: auto !important; ">
                                    <div class="col-lg-3 col-sm-4 col-md-4 img-logo ">
                                        <img src="assets/images/banners/logo_banner_03.png" alt="">
                                    </div>
                                    <div class="col-10 text-logo">
                                        <h2 class="mbr-fonts-style display-2" id="texto-banners-branco">
                                            <strong>Congresso<br>
                                                Autocom
                                            </strong>
                                        </h2>
                                        <p class="lead mbr-text mbr-fonts-style display-5" id="texto-banners-branco">
                                            O Futuro da Tecnologia é Agora
                                            <br>
                                            08 e 09 de Setembro de 2021
                                            <br>
                                            durante a Feira Autocom
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item slider-fullscreen-image " data-bg-video-slide="false" style="background-image: url(assets/images/banners/banner_04.jpg);">
                    <div class="container container-slide">
                        <div class="image_wrapper">
                            <img class="img-banner" src="assets/images/banners/banner_04.jpg" alt="" title="">
                            <div class="carousel-caption justify-content-center" style="padding-left: 19%;">
                                <div class="row-logo" style="width:85%; display: flex; height: auto !important; ">
                                    <div class="col-lg-3 col-sm-4 col-md-4 img-logo ">
                                        <img src="assets/images/banners/logo_banner_04.png" alt="">
                                    </div>
                                    <div class="col-10 text-logo">
                                        <h2 class="mbr-fonts-style display-2" id="texto-banners">
                                            <strong>
                                                AUTOCOM 2021
                                            </strong>
                                        </h2>
                                        <p class="lead mbr-text mbr-fonts-style display-5" id="texto-banners">
                                            A maior feira da América Latina
                                            <br>
                                            de tecnologia para o comércio
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item slider-fullscreen-image " data-bg-video-slide="false" style="background-image: url(assets/images/banners/banner_15.jpg);">
                    <div class="container container-slide">
                        <div class="image_wrapper">
                            <img class="img-banner" src="assets/images/banners/banner_15.jpg" alt="" title="">
                            <div class="carousel-caption justify-content-center" style="padding-left: 10%;">
                                <div class="row-logo" style="width:85%; display: flex; height: auto !important; ">
                                    <div class="col-lg-3 col-sm-4 col-md-4 img-logo ">
                                        <img src="assets/images/banners/png-podcast.png" alt="">
                                    </div>
                                    <div class="col-10 text-logo">
                                        <h2 class="mbr-fonts-style display-2" id="texto-banners">
                                            <strong>
                                                <br>

                                            </strong>
                                        </h2>
                                        <p class="lead mbr-text mbr-fonts-style display-5" id="texto-banners">


                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item slider-fullscreen-image " data-bg-video-slide="false" style="background-image: url(assets/images/banners/banner_06.jpg);">
                    <div class="container container-slide">
                        <div class="image_wrapper">
                            <img class="img-banner" src="assets/images/banners/banner_06.jpg" alt="" title="">
                            <div class="carousel-caption justify-content-center" style="padding-left: 6%;">
                                <div class="row-logo" style="width:85%; display: flex; height: auto !important; ">
                                    <div class="col-lg-3 col-sm-4 col-md-4 img-logo ">
                                        <img src="assets/images/banners/logo_banner_06.png" alt="">
                                    </div>
                                    <div class="col-10 text-logo align-left">
                                        <h1 class="mbr-fonts-style display-2" id="texto-banners">
                                            <strong>
                                                Parceria AFRAC e Tributarie
                                            </strong>
                                        </h1>
                                        <p class="lead mbr-text mbr-fonts-style display-5" id="texto-banners">
                                            Suporte para o Planejamento tributário da sua empresa.
                                            <br>
                                            Associado AFRAC tem desconto sobre o percentual
                                            <br>
                                            padrão de recuperação fiscal praticado pela Tributarie.
                                            <br>
                                            Clique e saiba mais!
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item slider-fullscreen-image " data-bg-video-slide="false" style="background-image: url(assets/images/banners/banner_07.jpg);">
                    <div class="container container-slide">
                        <div class="image_wrapper">
                            <img class="img-banner" src="assets/images/banners/banner_07.jpg" alt="" title="">
                            <div class="carousel-caption justify-content-center" style="padding-left: 20%;">
                                <div class="row-logo" style="width:85%; display: flex; height: auto !important; ">
                                    <div class="col-lg-3 col-sm-4 col-md-4 img-logo ">
                                        <img src="assets/images/banners/logo_banner_07.png" alt="">
                                    </div>
                                    <div class="col-10 text-logo">
                                        <h2 class="mbr-fonts-style display-2" id="texto-banners-branco">
                                            <strong>
                                                Blog AFRAC
                                            </strong>
                                        </h2>
                                        <p class="lead mbr-text mbr-fonts-style display-5" id="texto-banners-branco">
                                            Atualizações diárias com informações, notícias,
                                            <br>
                                            alterações, regras e normas do mercado,
                                            <br>
                                            legislações e muitos outros conteúdos
                                            <br>
                                            sobre Automação Comercial. Acesse!

                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="carousel-item slider-fullscreen-image " data-bg-video-slide="https://www.youtube.com/watch?v=2xDBfEte79A&amp;feature=emb_logo">
                    <div class="container container-slide">
                        <div class="image_wrapper">
                            <div class="carousel-caption justify-content-center">
                                <div class="col-10 align-left">
                                    <h2 class="mbr-fonts-style display-2"></h2>
                                    <p class="lead mbr-text mbr-fonts-style display-5"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- BOTOES DE AVANCAR E VOLTAR -->

            <a data-app-prevent-settings="" class="carousel-control carousel-control-prev" role="button" data-slide="prev" href="#slider1-l">
                <span aria-hidden="true" class="mbri-left mbr-iconfont"></span><span class="sr-only">Previous</span></a>

            <a data-app-prevent-settings="" class="carousel-control carousel-control-next" role="button" data-slide="next" href="#slider1-l">
                <span aria-hidden="true" class="mbri-right mbr-iconfont"></span><span class="sr-only">Next</span></a>

        </div>
    </div>

</section>

<!-- BLOG -->
<section class="features18 popup-btn-cards cid-s7nr3ReWga" id="features18-t">

    <div class="container">
        <h2 class="mbr-section-title pb-3 align-center mbr-fonts-style display-2">
            <strong>&nbsp; Blog AFRAC</strong>
        </h2>
        <center>

            <h4>Confira as principais notícias sobre o nosso segmento
                <br>
                e fique atualizado sobre os principais acontecimentos.
            </h4>
        </center>

        <div class="media-container-row pt-5 ">



            <div class="card p-3 col-12 col-md-4 col-sm-12">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="admin/upload/<?= $conteudoBlog[0]->img ?>" style="width: 85%;">
                    </div>
                    <div class="card-box">
                        <a href="blog-full-content.php?id=<?= $conteudoBlog[0]->id ?>">
                            <p class="card-title mbr-fonts-style mbr-bold display-6">
                                <?php echo $conteudoBlog[0]->title; ?>
                            </p>
                        </a>
                        <p class="mbr-text mbr-fonts-style display-7">
                            <?php echo substr(strip_tags($conteudoBlog[0]->content), 0, 300); ?>

                        </p>
                    </div>
                </div>
            </div>




            <div class="card p-3 col-12 col-md-4 col-sm-12">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="admin/upload/<?= $conteudoBlog[1]->img ?>" style="width: 85%;">
                    </div>
                    <div class="card-box">
                        <a href="blog-full-content.php?id=<?= $conteudoBlog[1]->id ?>">
                            <p class="card-title mbr-fonts-style mbr-bold display-6">
                                <?php echo $conteudoBlog[1]->title; ?>
                            </p>
                        </a>
                        <p class="mbr-text mbr-fonts-style display-7">
                            <?php echo substr(strip_tags($conteudoBlog[1]->content), 0, 300); ?>

                        </p>
                    </div>
                </div>
            </div>


            <div class="card p-3 col-12 col-md-4 col-sm-12">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="admin/upload/<?= $conteudoBlog[2]->img ?>" style="width: 85%;">
                    </div>
                    <div class="card-box">
                        <a href="blog-full-content.php?id=<?= $conteudoBlog[2]->id ?>">
                            <p class="card-title mbr-fonts-style mbr-bold display-6">
                                <?php echo $conteudoBlog[2]->title; ?>
                            </p>
                        </a>
                        <p class="mbr-text mbr-fonts-style display-7">
                            <?php echo substr(strip_tags($conteudoBlog[2]->content), 0, 300); ?>

                        </p>
                    </div>
                </div>
            </div>



        </div>
    </div>
</section>
<section class="cid-srbgjh0Df2" id="header2-2a">
    <img src="assets/images/banners/logo_uni.png" style="margin-left: 40%;" id="logo_uni">
    <div class="mbr-section-btn align-center">
        <a class="btn btn-md btn-primary display-4" href="universidade.php">FIQUE POR DENTRO</a>
    </div>

</section>

<section class="header4 cid-saFWro79lW" id="header4-23" style="margin-top: 10%;">

    <div class="container">
        <div class="row justify-content-md-center">
            <div class="media-content col-md-10">
                <!-- <h1 class="mbr-section-title align-center mbr-white pb-3 mbr-bold mbr-fonts-style display-2">VITRINE DO MERCADO</h1> -->

                <div class="mbr-text align-center mbr-white pb-3"></div>
                <!-- <div class="mbr-section-btn align-center"><a class="btn btn-md btn-primary display-4" href="index.html">FIQUE POR DENTRO</a></div> -->
            </div>

            <div class="mbr-figure pt-5">
                <a href="vitrine.php"><img src="assets/images/banners/titulo_banner_mercado.png" alt="AFRAC" title="" style="width: 100%; height:auto ;"></a>

            </div>
            <div class="mbr-section-btn align-center">
                <a class="btn btn-md btn-primary display-4" href="vitrine.php" style="margin-bottom: 10% ;">FIQUE POR DENTRO</a>
            </div>

        </div>
    </div>
</section>

<section class="features18 popup-btn-cards cid-s7nr3ReWga" id="features18-t">

    <div class="container">
        <h2 class="mbr-section-title pb-3 align-center mbr-fonts-style display-2">
            <strong>Vitrine de Mercado</strong>
        </h2>
        <center>

            <h4>
                <br>
            </h4>
        </center>




        <div class="media-container-row pt-5 ">


            <div class="card p-3 col-12 col-md-4 col-sm-12">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="admin/upload/<?= $conteudoVitrine[0]->img ?>" style="width: 85%;">
                    </div>
                    <div class="card-box">
                        <a href="blog-full-content.php?id=<?= $conteudoVitrine[0]->id ?>">
                            <p class="card-title mbr-fonts-style mbr-bold display-6">
                                <?php echo $conteudoVitrine[0]->title; ?>
                            </p>
                        </a>
                        <p class="mbr-text mbr-fonts-style display-7">
                            <?php echo substr(strip_tags($conteudoVitrine[0]->content), 0, 300); ?>

                        </p>
                    </div>
                </div>
            </div>




            <div class="card p-3 col-12 col-md-4 col-sm-12">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="admin/upload/<?= $conteudoVitrine[1]->img ?>" style="width: 85%;">
                    </div>
                    <div class="card-box">
                        <a href="blog-full-content.php?id=<?= $conteudoVitrine[1]->id ?>">
                            <p class="card-title mbr-fonts-style mbr-bold display-6">
                                <?php echo $conteudoVitrine[1]->title; ?>
                            </p>
                        </a>
                        <p class="mbr-text mbr-fonts-style display-7">
                            <?php echo substr(strip_tags($conteudoVitrine[1]->content), 0, 300); ?>

                        </p>
                    </div>
                </div>
            </div>


            <div class="card p-3 col-12 col-md-4 col-sm-12">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="admin/upload/<?= $conteudoVitrine[2]->img ?>" style="width: 85%;">
                    </div>
                    <div class="card-box">
                        <a href="blog-full-content.php?id=<?= $conteudoVitrine[2]->id ?>">
                            <p class="card-title mbr-fonts-style mbr-bold display-6">
                                <?php echo $conteudoVitrine[2]->title; ?>
                            </p>
                        </a>
                        <p class="mbr-text mbr-fonts-style display-7">
                            <?php echo substr(strip_tags($conteudoVitrine[2]->content), 0, 300); ?>

                        </p>
                    </div>
                </div>
            </div>





        </div>



</section>

<!-- DESTAQUES -->
<!-- <section class="features18 popup-btn-cards cid-s7nr3ReWga" id="features18-t"> <div class="container"> <h2 class="mbr-section-title pb-3 align-center mbr-fonts-style display-2"><strong>&nbsp; DESTAQUES</strong> </h2> <div class="media-container-row pt-5 "> <div class="card p-3 col-12 col-md-6 col-lg-4"> <div class="card-wrapper "> <div class="card-img"> <div class="mbr-overlay"></div> <a href="https://blogafrac.org/2020/09/15/minas-gerais-altera-legislacao-da-nfc-e/"><img src="assets/images/imagem-blog-676x522.jpg" alt="AFRAC" title=""></a> </div> <div class="card-box"> <BR> <h1 class="card-title ">NOVIDADES </h1> </div> </div> </div> <div class="card p-3 col-12 col-md-6 col-lg-4"> <div class="card-wrapper"> <div class="card-img"> <div class="mbr-overlay"></div> <a href="https://blogafrac.org/2020/09/11/por-que-os-varejistas-devem-investir-em-gestao-de-carteiras-digitais/"><img src="assets/images/imagem-blog-676x522.jpg" alt="AFRAC" title=""></a> </div> <div class="card-box"> <BR> <h1 class="card-title "> VIDEOS </h1> </div> </div> </div> <div class="card p-3 col-12 col-md-6 col-lg-4"> <div class="card-wrapper"> <div class="card-img"> <div class="mbr-overlay"></div> <a href="https://www.youtube.com/watch?v=aA1VJtEVgr8"><img src="https://img.youtube.com/vi/aA1VJtEVgr8/0.jpg" alt="AFRAC" title=""></a> </div> <div class="card-box"> <BR> <h1 class="card-title ">AGENDA </h1> </div> </div> </div> </div> </div> </section> -->

<section class="features5 cid-s7nqItSHxC" id="features5-q">

    <div class="container">
        <div class="media-container-row">

            <div class="card p-3 col-12 col-md-6 col-lg-4">
                <a href="estatuto.php">
                    <div class="card-img pb-3">
                        <img src="assets/images/home_icone_estatuto.png" alt="" style="width: 80%;">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title py-3 mbr-fonts-style display-5">
                            <strong>Estatuto Social</strong>
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            <a href="estatuto.php" target="_blank">Acesse aqui o Estatuto Social</a>
                        </p>
                    </div>
                </a>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-4">
                <a href="codigo-etica.php">
                    <div class="card-img pb-3">
                        <img src="assets/images/home_icone_codigo.png" alt="" style="width: 80%;">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title py-3 mbr-fonts-style display-5">
                            <strong>Código de Ética</strong>
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            <a href="codigo-etica.php" target="_blank">Acesse aqui o Código de Ética</a>
                        </p>
                    </div>
                </a>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-4">
                <a href="https://rdstation-static.s3.amazonaws.com/cms%2Ffiles%2F56860%2F1591901068Institucional_AFRAC_2020.pdf">
                    <div class="card-img pb-3">
                        <img src="assets/images/home_icone_institucional.png" alt="" style="width: 80%;">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title py-3 mbr-fonts-style display-5">
                            <strong>
                                Institucional AFRAC</strong>
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            <a href="https://rdstation-static.s3.amazonaws.com/cms%2Ffiles%2F56860%2F1591901068Institucional_AFRAC_2020.pdf" class="text-secondary" target="_blank">Saiba mais sobre a Entidade</a>
                        </p>
                    </div>
                </a>
            </div>

        </div>
    </div>
</section>

<section class="mbr-section form3 cid-saAM9EkEDE" id="form3-1x">

    <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(0, 0, 51);"></div>

    <div class="container">
        <div class="row justify-content-center">
            <div class="title col-12 col-lg-8">
                <h2 class="align-center pb-2 mbr-fonts-style display-2">
                    Receba nossa Newsletter</h2>
                <h3 class="mbr-section-subtitle align-center pb-5 mbr-light mbr-fonts-style display-5">
                    Receba nossa Newsletter Inscreva-se e receba conteúdos sobre notícias, alterações e regras, além de normas do mercado, legislações e muitos outros conteúdos sobre à Automação Comercial.
                </h3>
            </div>
        </div>

        <div class="row py-2 justify-content-center">
            <div class="col-12 col-lg-6  col-md-8 " data-form-type="formoid">
                <!---Formbuilder Form--->
                <form action="" method="POST" class="mbr-form form-with-styler" data-form-title="Afrac form">
                    <input type="hidden" name="email" data-form-email="true" value="oM/9k+lLELKkhUAlAHhGCzcb8aD2bqhPDPhw7tsRUij9K4v0XdGwjBKHgjxisaT0ZHsbWsOfejpfK/OchpAPXQ4+VQye5uIoEO+piYbCkUCk0JdP2WOuMQRBt6Zgzrt2">
                    <div class="row">
                        <div hidden="hidden" data-form-alert="" class="alert alert-success col-12">Obrigado por se inscrever</div>
                        <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12"></div>
                    </div>
                    <div class="dragArea row">
                        <div class="form-group col" data-for="email">
                            <input type="email" name="email" placeholder="Email" data-form-field="Email" required="required" class="form-control display-7" id="email-form3-1x">
                        </div>
                        <div class="col-auto input-group-btn">
                            <button type="submit" class="btn btn-primary display-4" href="index.html">QUERO RECEBER</button>
                        </div>
                    </div>
                </form>
                <!---Formbuilder Form--->
            </div>
        </div>
    </div>
</section>


<style>

</style>



<?php require("footer.php"); ?>