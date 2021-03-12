<?php
require_once 'users/init.php';
if (!securePage($_SERVER['PHP_SELF'])) {
  die();
}

$hooks =  getMyHooks();
includeHook($hooks, 'pre');
require_once 'header.php';
$db = DB::getInstance();

$boolUpdate = false;
$btnSalvar = "";
$id_conteudo = 0;

// dump($_FILES);

//Note: This resolves as true even if all $_POST values are empty strings
if (!empty($_POST)) {



  // echo "POST <br>";
  // dump($_POST);
  
  // echo "GET <br>";
  // dump($_GET);
  
  // die();

  







  if (!empty($_FILES)) {

    // dump($_FILES);
    // UPLOAD ###############################################
    $token = bin2hex(random_bytes(20));
    // Nas versões do PHP que antecedem a versão 4.1.0, é preciso usar o $HTTP_POST_FILES em vez do $_FILES.    
    $uploaddir = 'upload/';
    $nomeArquivo = basename($_FILES['fileToUpload']['name']);
    $ext = pathinfo($nomeArquivo, PATHINFO_EXTENSION);
    $uploadfile   = $uploaddir . $token . "." . $ext;
    $boolUpload = false;
    $arquivofisico = "img-padrao-post.jpg";

    if (move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $uploadfile)) {
      // echo "O arquivo é valido e foi carregado com sucesso.\n";
      // echo "result : " . $insert = $db->insert("arquivos", $fields);
      //  $insert = $db->insert("arquivos", $fields);
      $arquivofisico = $token . "." . $ext;
      logger($user->data()->id, "Upload", $user->data()->fname . " fez um novo upload, com o nome de " . $nomeArquivo);
      // $boolUpload = true;


    } else {
      // $boolUpload = false;
      // $arquivofisico = "img-padrao-post.jpg" ;
      logger($user->data()->id, "Upload", $user->data()->fname . " Ocorreu um erro ao tentar fazer um novo upload");
      // echo "Algo está errado aqui!\n";
    }


    // echo $uploadfile;
    // echo $arquivofisico;
  }



  // echo "post";
  // die();

  // UPLOAD ###############################################
  if (!empty($_GET["id"])) {

    // echo "Post com update <br>";
    // $boolUpdate = true;
    // echo $result =   $db->query("
    // update conteudos set content = '" .
    //   $_POST["area2"] . "' where id = " . $_GET["id"])->results();


    $fields = array(
      'title'                 => $_POST["titulo"],
      'content'               => $_POST["area2"],
      'type'                  => $_POST["sessao"],
      'link'                  => $_POST["link"],
      'status'                => "Publicado",
      'date-modified'         => date('Y-m-d H:i:s'),
      'user_id'               => $user->data()->id
      // 'user_id'             => $categoria,
      // 'nome'                  => $nomeArquivo,
      // 'criado_em'             => date('Y-m-d H:i:s')
    );

    if (!empty($_FILES)) {
      $fields['img'] = $arquivofisico;
    }

    // echo "atualizado";
    //  dump($fields);
    //  die();

    $id_conteudo = $_GET["id"];

    echo $result = $db->update('conteudos', $_GET["id"], $fields);
  } else {

    $fields = array(
      'title'                 => $_POST["titulo"],
      'content'               => $_POST["area2"],
      'type'                  => $_POST["sessao"],
      'link'                  => $_POST["link"],
      'status'                => "Publicado",
      'img'                   => $arquivofisico,
      'date-created'          => date('Y-m-d H:i:s'),
      'user_id'               => $user->data()->id
      // 'user_id'             => $categoria,
      // 'nome'                  => $nomeArquivo,
      // 'criado_em'             => date('Y-m-d H:i:s')
    );



    // echo "inserido";
    //  dump($fields);
    //  die();

    $result =  $insert = $db->insert("conteudos", $fields);

    $id_conteudo = $db->query("SELECT max(id) as id FROM conteudos")->results()[0]->id;

    // echo $id_conteudo->id;
    // echo ":: " . dump($db);
    logger($user->data()->id, "Conteudo Criado ", $user->data()->fname . "
         criou um novo conteudo com o Titulo  " . $_POST["titulo"]);
  }




  // echo "Post <br>";
}

//Note: This resolves as true even if all $_POST values are empty strings
if (!empty($_GET)) {

  // echo "get";
  $conteudo = $db->query("select * from conteudos where id = " . $_GET["id"])->results()[0];
  $boolUpdate = true;
}

if ($boolUpdate) {
  $titulo = $conteudo->title;
  $conteudoFull = $conteudo->content;
  $btnSalvar = "Salvar";
  $selectType = $conteudo->type;
  $link = $conteudo->link;
} else {
  $titulo = "";
  $conteudoFull = "";
  $btnSalvar = "Incluir";
  $selectType = "";
  $link = "";
}


?>


<!-- End Navbar -->
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-info">
            <h3 class="card-title"><?= $btnSalvar ?> Conteúdo</h3>
            <p class="card-category">
            </p>
          </div>
          <div class="card-body">


            <?php
            // dump($_POST);
            //Controle de tela Novo ou edicao (Post ou get)
            if ($boolUpdate) {
            ?>
              <form enctype="multipart/form-data" action="conteudo.php?id=<?= $_GET["id"] ?>" method="post" name="form-content">
              <?php
            } else {
              ?>
                <form enctype="multipart/form-data" action="conteudo.php" method="post" name="form-content">

                <?php
              }
                ?>

                <div class="form-row">
                  <div class="col-md-4 mb-3">
                    <label for="validationDefault01"><b> Sessão no Site</b></label>
                    <div class="form-group">
                      <select class="custom-select" name="sessao" id="sessao" required>
                        <option <?= $selectType == "" ? " selected " : " " ?> value="0">Selecione a sessão do conteúdo</option>
                        <option <?= $selectType == "1" ? " selected " : " " ?>value="1">Blog da Afrac</option>
                        <option <?= $selectType == "2" ? " selected " : " " ?>value="2">Vitrine do Mercado</option>
                        <option <?= $selectType == "3" ? " selected " : " " ?>value="3">Meios de pagamento</option>
                        <option <?= $selectType == "4" ? " selected " : " " ?>value="4">Video (Historico de Lives)</option>
                      </select>
                      <!-- <div class="invalid-feedback">Example invalid custom select feedback</div> -->
                    </div>
                  </div>
                </div>



                <div id="dv_titulo" class="form-row"   >
                  <div class="col-md-8 mb-3">
                    <label for="validationDefaultUsername"><b> Titulo</b></label>
                    <div class="input-group">
                      <!-- <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroupPrepend2"></span>
                    </div> -->
                      <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Digite o titulo do Conteúdo" aria-describedby="inputGroupPrepend2" required value="<?= $titulo ?>">
                    </div>
                  </div>
                </div>


                <div id="dv_link" class="form-row">
                  <div class="col-md-8 mb-3">
                    <label for=""><b> Link do Video</b></label>
                    <div class="input-group">
                      <!-- <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroupPrepend2"></span>
                    </div> -->
                      <input type="text" class="form-control" id="link" name="link" placeholder="Digite o link do Video" aria-describedby="inputGroupPrepend2"  value="<?= $link ?>">
                    </div>
                  </div>
                </div>


                <script src="https://cdn.tiny.cloud/1/10xgljhwom4gm432jd47x72gs5ollhix75ahro5cjak0vfnf/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
                <script>
                  tinymce.init({
                    selector: '#area2',
                    height: 500,
                    menubar: false,
                    plugins: [
                      'image imagetools advlist autolink lists link image charmap print preview anchor',
                      'searchreplace visualblocks code fullscreen',
                      'insertdatetime media table paste code help wordcount'
                    ],
                    toolbar: 'image imagetools undo redo | formatselect | ' +
                      'bold italic backcolor | alignleft aligncenter ' +
                      'alignright alignjustify | bullist numlist outdent indent | ' +
                      'removeformat | help',
                    content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
                  });
                </script>


                <div id="dv_conteudo" class="form-row">
                  <div class="col-md-12 mb-6">
                    <div class="form-group">
                      <label for="exampleFormControlTextarea1"><b> Conteúdo</b> </label>
                      <!-- <textarea class="form-control" id="exampleFormControlTextarea1" rows="15"></textarea> -->


                      <textarea name="area2" id="area2" rows="15" style="width: 100%;">
                    <?= $conteudoFull ?>
                    </textarea>

                    </div>

                  </div>
                </div>


                <input id="fileToUpload" name="fileToUpload" type="file" />
                <br>
                <br>
                <!-- <h2>Imagem de destaque</h2> -->
                <?php
                // if($conteudo->img <> ""){

                //   echo "<img src='upload/".$conteudo->img . "' />";

                // }

                ?>
                <br>
                <br>


                <div id="dv_botoes" class="form-row">
                  <a href="conteudos.php" class="btn btn-warning" type="submit">Cancelar</a>
                  <button class="btn btn-primary" type="submit"><?= $btnSalvar ?> </button>
                </div>

                </form>


          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- footer -->
<?php require_once 'footer.php'; ?>



<script>
  function submit() {

    $('form#form-content').submit();


  }


  $(document).ready(function() {

    $("#sessao").on('change', function() {

      selected = $("#sessao").val();
      if (selected == "0") {
        hideall();
      };

      if (selected == 4) {
        showVideo();
      } else {
        showContent();


      }

      // $(".data").hide();
      // $("#" + $(this).val()).fadeIn(700);

      // alert('aaaaa');
      // event.preventDefault();

    }).change();



  });


    /**
     * Inabilita todos componentes
     *
     * @return void
     */
    function hideall() {
      $("#dv_titulo").hide();
      $("#dv_conteudo").hide();
      $("#fileToUpload").hide();
      $("#dv_botoes").hide();
    }
    /**
     * habilita todos componentes
     *
     * @return void
     */
    function showAll() {
      $("#dv_titulo").show();
      $("#dv_conteudo").show();
      $("#fileToUpload").show();
      $("#dv_botoes").show();
    }

    /**
     * habilita todos componentes
     *
     * @return void
     */
    function showVideo() {
      $("#dv_conteudo").hide();
      $("#fileToUpload").hide();

      $("#dv_titulo").show();
      $("#dv_link").show();
      $("#dv_botoes").show();
    }

    /**
     * habilita todos componentes
     *
     * @return void
     */
    function showContent() {
      $("#dv_conteudo").show();
      $("#fileToUpload").show();

      $("#dv_titulo").show();
      $("#dv_botoes").show();

      $("#dv_link").hide();
    }



//   selected = $("#sessao").val();

//       // if (selected == 4) {
//       //   showVideo();
//       // } else {
//       //   showAll();
//       // }

//       if (selected == 0) {
//   // alert(selected)
// };

// hideall();
</script>