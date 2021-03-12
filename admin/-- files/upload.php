
<?php require_once 'header.php'; ?>

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
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-primary">
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
                accept: function(file, done) {
                  if (file.name == "olamundo.png") {
                    done("Arquivo não aceito.");
                  } else {
                    done();
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