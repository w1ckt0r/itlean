<?php


require_once 'users/init.php';
// require_once $abs_us_root.$us_url_root.'users/includes/template/prep.php';

if (!securePage($_SERVER['PHP_SELF'])) {
  die();
}
$hooks =  getMyHooks();
includeHook($hooks, 'pre');

require_once 'header.php';

?>

<!--
  DO NOT SIMPLY COPY THOSE LINES. Download the JS and CSS files from the
  latest release (https://github.com/enyo/dropzone/releases/latest), and
  host them yourself!
-->
<script src="https://rawgit.com/enyo/dropzone/master/dist/dropzone.js"></script>
<link rel="stylesheet" href="https://rawgit.com/enyo/dropzone/master/dist/dropzone.css">


<!-- End Navbar -->
<div class="content">
  <div class="container-fluid">
    <div class="row">


      <?php

      // sem prefixo
      // echo $token = md5(uniqid(""));
      // echo "<br>";
      // melhor, dificil de adivinhar
      // echo $better_token = md5(uniqid(rand(), true));
      // echo $token = bin2hex(random_bytes(48));

      ?>


      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-info">
            <h4 class="card-title">SOBRE O(S) ARQUIVO(S)</h4>
            <p class="card-category">Você poderá subir um ou mais arquivos ao mesmo tempo.</p>
          </div>
          <div class="card-body">
            <form>
              <div class="row">
                <div class="col-md-5">
                  <div class="form-group bmd-form-group">
                    <label class="bmd-label-floating">Qual o evento desse arquivo?</label>
                    <input type="text" id="evento" name="evento" class="form-control">
                  </div>
                </div>

              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group bmd-form-group">
                    <label class="bmd-labe">O que você esta enviando?</label>
                    <!-- <input type="text" class="form-control"> -->
                    <select name="categoria" id="categoria" class="form-control">
                      <option selected value="sem categoria">Escolher uma opção  </option>
                      <option value="Malling">Documento de Evento </option>
                      <option value="Malling">Malling </option>
                      <option value="Orçamento">Malling para Orçamento </option>
                      <option value="Arte">Arte para email </option>
                      <option value="Identidade Visual">Identidade visual do cliente </option>
                      <option value="Publicidade">Peça publicitária do cliente </option>
                      <option value="Anexo Dados sensiveis">Documento com dados sensiveis </option>
                    </select>


                  </div>
                </div>

              </div>



              <!-- <button type="submit" class="btn btn-primary pull-right">Update Profile</button> -->
              <div class="clearfix"></div>
            </form>
          </div>
        </div>
      </div>



      <div class="col-md-12">








        <div class="card">
          <div class="card-header card-header-info">
            <h4 class="card-title ">UPLOAD DE ARQUIVOS</h4>
            <p class="card-category">
              <!-- <button type="submit" class="btn btn-success pull-left">Novo upload<div class="ripple-container"></div></button> -->

            </p>
          </div>
          <div class="card-body">
            <!-- <form action="upload.php" method="post" enctype="multipart/form-data"> -->

            <!-- Change /upload-target to your upload address -->
            <!-- <form action="upload.php" method="post" enctype="multipart/form-data" class="dropzone"> -->
            <form action="up-proccess.php" class="dropzone" id="meuPrimeiroDropzone" enctype="multipart/form-data">
              <div class="fallback">
                <input name="fileToUpload" type="file" multiple />
              </div>
            </form>

            <script>
              Dropzone.options.meuPrimeiroDropzone = {
                paramName: "fileToUpload",
                dictDefaultMessage: "Arraste seus arquivos para cá!",
                maxFilesize: 300,

                init: function() {
                  this.on("complete", function(file) {
                      if (this.getUploadingFiles().length === 0 && this.getQueuedFiles().length === 0) {
                        console.log(this.getUploadingFiles().length);
                        
                        // doSomething();
                        //  alert();
                        window.location.href = "conteudos.php";


                      }


                    }),

                    this.on("sending", function(file, xhr, formData) {
                      formData.append("evento", document.getElementById("evento").value);
                      formData.append("categoria", document.getElementById("categoria").value);
                    });



                },



                accept: function(file, done) {
                  if (file.name == "olamundo.png") {
                    done("Arquivo não aceito.");
                  } else {

                    done();
                    // alert();
                  }
                }
              }
            </script>



          </div>
        </div>
      </div>
    </div>
  </div>
</div>





<?php require_once 'footer.php'; ?>