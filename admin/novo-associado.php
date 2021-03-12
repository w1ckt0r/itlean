<?php
require_once 'users/init.php';
if (!securePage($_SERVER['PHP_SELF'])) {
  die();
}
$hooks =  getMyHooks();
includeHook($hooks, 'pre');
require_once 'header.php';
$db = DB::getInstance();


//Note: This resolves as true even if all $_POST values are empty strings
if (!empty($_POST)) {

  $fields = array(
    'nome'                      => $_POST['nome']  
  );

$db->insert('associados',$fields);
$id = $db->lastid();
Redirect::to("editar-associados.php?id=".$id);
// dump($fields);
// dump( 'id que foi gerado por ultimo : ' . $id);

  die();

  //  echo "  :: {$id_conteudo} ::: atualizado";
  //  dump($fields);
  //  die();

// dump($_POST);
// // die();
//   echo $result = $db->update('associados', $id, $fields);
//    Redirect::to("novo-associado.php?id=".$id);
}


// $id = $_GET["id"];

// $associado = $db->query(" select * from associados where id={$id}")->results()[0];
// // dump($associado);
// // foreach ($associados as $associado) {



?>

<!-- End Navbar -->
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-info">
            <h4 class="card-title">Inserir um novo associado </h4>
            <p class="card-category">
            </p>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table">
                <thead class=" text-primary">

                  <form enctype="multipart/form-data" action="novo-associado.php" method="post" name="form-content">


                    <!-- Form Name -->
                    <!-- <legend>Associados</legend> -->

                    <!-- Text input-->
                    <div class="form-group">
                      <label class="col-md-8 control-label" for="input">Nome</label>
                      <div class="col-md-8">
                        <input value="" class="form-control" id="nome" name="nome" placeholder="Nome"></input>
                     
                      </div>
                    </div>
                    <!-- Text input-->
                    <!-- <div class="form-group">
                      <label class="col-md-8  control-label" for="input">Endereco</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->endereco ?>" class="form-control" id="endereco" name="endereco" placeholder="Endereco"></input>
                      </div>
                    </div> -->
                    <!-- Text input-->
                    <!-- <div class="form-group">
                      <label class="col-md-8 control-label" for="input">local</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->local ?>" class="form-control" id="local" name="local" placeholder="local"></input>
                      </div>
                    </div> -->

                    <!-- Text input-->
                    <!-- <div class="form-group">
                      <label class="col-md-8 control-label" for="input">Site</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->url ?>" class="form-control" id="site" name="site" placeholder="Site"></input>
                      </div>
                    </div> -->


                    <!-- <div class="form-group">
                      <label class="col-md-8 control-label" for="input">Telefone</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->telefone ?>" class="form-control" id="telefone" name="telefone"></input>
                      </div>
                    </div> -->

                    <!-- Text input-->
                    <!-- <div class="form-group">
                      <label class="col-md-8 control-label" for="input">Segmento</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->segmento ?>" class="form-control" id="segmento" name="segmento"></input>
                      </div>
                    </div> -->


                    <!-- Form Name -->
                    <!-- <legend>Logo</legend> -->

                    <!-- Text input-->
                    <!-- <div class="form-group">
                      <label class="col-md-8 control-label" for="input"></label>
                      <div class="col-md-8">
                        <label for="avatar">Clique aqui para escolher a imagem :</label>

                        <input type="file" id="avatar" name="avatar" accept="image/png, image/jpeg">




                      </div>

                      <br>
                      <?php
                      if ($associado->logotipo != null) {

                        echo "<img id='img' width='300' height='auto'  src='upload/logomarcas/". $associado->logotipo."' alt=''>";
                      } else {

                        echo "<img id='img' src='assets/img/no-image.png' alt=''>";
                      }

                      ?>

                    </div> -->


                    <a href="associados.php" class="btn btn-warning">Cancelar</a>
                    <button class="btn btn-primary" type="submit">Salvar </button>


                  </form>


            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- footer -->
<?php require_once 'footer.php'; ?>



<!-- <script src="https://cdn.tiny.cloud/1/3pi35req66retm9019lz3n0re5yqv3c5rmrbv9r10cdbaphl/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script> -->
<script>
  $('#img').click(function() {
    $('#avatar').trigger('click');
  });
</script>