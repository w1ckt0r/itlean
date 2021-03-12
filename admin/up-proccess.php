<?php

require_once 'users/init.php';
$token = bin2hex(random_bytes(20));
$db = DB::getInstance();

// Nas versões do PHP que antecedem a versão 4.1.0, é preciso usar o $HTTP_POST_FILES em vez do $_FILES.

$uploaddir = 'upload/';
$nomeArquivo = basename( $_FILES['fileToUpload']['name']) ;
$ext = pathinfo($nomeArquivo, PATHINFO_EXTENSION);

// $uploadfile = $uploaddir .  basename( $_FILES['fileToUpload']['name']) ;
$uploadfile   = $uploaddir . $token . "." . $ext ;
$categoria    = $_POST['categoria'];
$evento       = $_POST['evento'];

$fields = array(
  'token'                 => $token,
  'arquivo_fisico'        => $token . "." . $ext,
  'categoria'             => $categoria,
  'evento'                => $evento,
  'data_envio'            => date('Y-m-d H:i:s'),
  'user_id'               => $user->data()->id,
  'nome'                  => $nomeArquivo,
  'criado_em'             => date('Y-m-d H:i:s')
);


if (move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $uploadfile)) {
  // echo "O arquivo é valido e foi carregado com sucesso.\n";
  // echo "result : " . $insert = $db->insert("arquivos", $fields);
   $insert = $db->insert("arquivos", $fields);
   logger($fuser->data()->id,"Upload",$fuser->data()->fname . " fez um novo upload, com o nome de " . $nomeArquivo);  
   
  } else {
    logger($fuser->data()->id,"Upload",$fuser->data()->fname . " Ocorreu um erro ao tentar fazer um novo upload");
  echo "Algo está errado aqui!\n";
}


?>
