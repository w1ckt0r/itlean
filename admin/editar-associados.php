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


  if (!empty($_FILES)) {

    // dump($_FILES);
    // UPLOAD ###############################################
    $token = bin2hex(random_bytes(20));
    // Nas versões do PHP que antecedem a versão 4.1.0, é preciso usar o $HTTP_POST_FILES em vez do $_FILES.    
    $uploaddir = 'upload/logomarcas/';
    $nomeArquivo = basename($_FILES['avatar']['name']);
    $ext = pathinfo($nomeArquivo, PATHINFO_EXTENSION);
    $uploadfile   = $uploaddir . $token . "." . $ext;
    $boolUpload = false;
    $arquivofisico = "img-padrao-post.jpg";

    if (move_uploaded_file($_FILES['avatar']['tmp_name'], $uploadfile)) {
      // echo "O arquivo é valido e foi carregado com sucesso.\n";
      // echo "result : " . $insert = $db->insert("arquivos", $fields);
      //  $insert = $db->insert("arquivos", $fields);
      $arquivofisico = $token . "." . $ext;
      // logger($user->data()->id, "Upload", $user->data()->fname . " fez um novo upload, com o nome de " . $nomeArquivo);
      // $boolUpload = true;
      echo "Certo por aqui!\n";
    } else {
      // $boolUpload = false;
      // $arquivofisico = "img-padrao-post.jpg" ;
      // logger($user->data()->id, "Upload", $user->data()->fname . " Ocorreu um erro ao tentar fazer um novo upload");
      echo "Algo está errado aqui!\n";
    }


    // echo $uploadfile;
    // echo $arquivofisico;
  }


  $fields = array(
    'segmento'                  => $_POST["segmento"],
    'local'                     => $_POST["local"],
    'url'                       => $_POST["site"],
    // 'logotipo'                  => $_POST["logotipo"],
    'telefone'                  => $_POST["telefone"],
    // 'email'                     => $_POST['email'],
    'endereco'                  => $_POST['endereco'],
    'nome'                      => $_POST['nome']
    // 'user_id'             => $categoria,
    // 'nome'                  => $nomeArquivo,
    // 'criado_em'             => date('Y-m-d H:i:s')
  );

  if (!empty($_FILES)) {
    $fields['logotipo'] = $arquivofisico;
  }

  $id = $_POST["id"];
  //  echo "  :: {$id_conteudo} ::: atualizado";
  //  dump($fields);
  //  die();

// dump($_POST);
// die();
  echo $result = $db->update('associados', $id, $fields);
   Redirect::to("editar-associados.php?id=".$id);
}


$id = $_GET["id"];

$associado = $db->query(" select * from associados where id={$id}")->results()[0];
// dump($associado);
// foreach ($associados as $associado) {



?>

<!-- End Navbar -->
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-info">
            <h4 class="card-title">Associados AFRAC </h4>
            <p class="card-category">
            </p>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table">
                <thead class=" text-primary">

                  <form enctype="multipart/form-data" action="editar-associados.php" method="post" name="form-content">


                    <!-- Form Name -->
                    <!-- <legend>Associados</legend> -->

                    <!-- Text input-->
                    <div class="form-group">
                      <label class="col-md-8 control-label" for="input">Nome</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->nome ?>" class="form-control" id="nome" name="nome" placeholder="Nome"></input>
                        <input type="hidden" id="id" name="id" value="<?= $associado->id ?>">
                      </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                      <label class="col-md-8  control-label" for="input">Endereco</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->endereco ?>" class="form-control" id="endereco" name="endereco" placeholder="Endereco"></input>
                      </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                      <label class="col-md-8 control-label" for="input">local</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->local ?>" class="form-control" id="local" name="local" placeholder="local"></input>
                      </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                      <label class="col-md-8 control-label" for="input">Site</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->url ?>" class="form-control" id="site" name="site" placeholder="Site"></input>
                      </div>
                    </div>


                    <div class="form-group">
                      <label class="col-md-8 control-label" for="input">Telefone</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->telefone ?>" class="form-control" id="telefone" name="telefone"></input>
                      </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                      <label class="col-md-8 control-label" for="input">Segmento</label>
                      <div class="col-md-8">
                        <input value="<?= $associado->segmento ?>" class="form-control" id="segmento" name="segmento"></input>
                      </div>
                    </div>


                    <!-- Form Name -->
                    <!-- <legend>Logo</legend> -->

                    <!-- Text input-->
                    <div class="form-group">
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
                      <!-- <h4>Preview</h4> -->

                    </div>


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