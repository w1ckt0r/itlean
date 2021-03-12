<?php

require_once 'users/init.php';
// if (!securePage($_SERVER['PHP_SELF'])){die();}
if ($user->isLoggedIn()) {

  $db     = DB::getInstance();
  $id     = isset($_POST['id']) ? $_POST['id'] : null;
  $action = isset($_POST['action']) ? $_POST['action'] : null;

  /**
   * DELETAR ARQUIVOS VALIDADOS 
   * 
   * */
  if ($action == 'xdel') {

    $result = $db->query("delete from conteudos where id = " . $id)->results();


    // $file_pointer = $db->query("select nome from arquivos where  id = " . $id)->results();
    // // dump($file_pointer);
    // $file = "upload/" . $file_pointer[0]->nome;
    // // die();
    // if (is_file($file) && @unlink($file)) {
    //   // delete success
    //   $result = $db->query("delete from arquivos where id = " . $id)->results();
    //   // echo ("$file foi deletado de nossa base de dados");
    //   logger($user->data()->id, "Exclusão", "[".$file_pointer[0]->nome."]"."Arquivo deletado de nossa base de dados pelo usuario" . $user->data()->fname );
      
    //   die();
    // } else if (is_file($file)) {
    //   // unlink failed.
    //   // you would have got an error if it wasn't suppressed
    //   // echo ("$file existe mas não pode ser deletado nesse momento");
    //   logger($user->data()->id, "Exclusão", "[".$file_pointer[0]->nome."]"."O arquivo existe mas não pode ser deletado nesse momento pelo usuário " . $user->data()->fname );
    //   die();
    // } else {
    //   // file doesn't exist
    //   $result = $db->query("delete from arquivos where id = " . $id)->results();
    //   // echo ("$file não existe então foi deletadodo banco de dados");
    //   logger($user->data()->id, "Exclusão", "[".$file_pointer[0]->nome."]"."O arquivo não existe fisicamente por algum motivo, portando foi deletado do banco de dados pelo usuário " . $user->data()->fname );     
    //   die();
    // }
  }
  /**
   * DELETAR ARQUIVOS VALIDADOS 
   * 
   * */
  if ($action == 'xdel-associado') {

    $result = $db->query("delete from associados where id = " . $id)->results();

    echo "deletado mesmo";

    // $file_pointer = $db->query("select nome from arquivos where  id = " . $id)->results();
    // // dump($file_pointer);
    // $file = "upload/" . $file_pointer[0]->nome;
    // // die();
    // if (is_file($file) && @unlink($file)) {
    //   // delete success
    //   $result = $db->query("delete from arquivos where id = " . $id)->results();
    //   // echo ("$file foi deletado de nossa base de dados");
    //   logger($user->data()->id, "Exclusão", "[".$file_pointer[0]->nome."]"."Arquivo deletado de nossa base de dados pelo usuario" . $user->data()->fname );
      
    //   die();
    // } else if (is_file($file)) {
    //   // unlink failed.
    //   // you would have got an error if it wasn't suppressed
    //   // echo ("$file existe mas não pode ser deletado nesse momento");
    //   logger($user->data()->id, "Exclusão", "[".$file_pointer[0]->nome."]"."O arquivo existe mas não pode ser deletado nesse momento pelo usuário " . $user->data()->fname );
    //   die();
    // } else {
    //   // file doesn't exist
    //   $result = $db->query("delete from arquivos where id = " . $id)->results();
    //   // echo ("$file não existe então foi deletadodo banco de dados");
    //   logger($user->data()->id, "Exclusão", "[".$file_pointer[0]->nome."]"."O arquivo não existe fisicamente por algum motivo, portando foi deletado do banco de dados pelo usuário " . $user->data()->fname );     
    //   die();
    // }
  }

  /**
   * GERAR LINK E ENVIAR POR EMAIL
   * 
   */
  // if ($action == 'xenviar') {

  //   $email = $_POST["email"];
  //   // $settings = $db->query("SELECT * FROM settings")->first();
  //   // require_once 'users/includes/template/header1_must_include.php';

  //   $file_pointer = $db->query("select nome from arquivos where  id = " . $id)->results();
  //   // dump($file_pointer);
  //   $file = "upload/" . $file_pointer[0]->nome;

  //   // $vericode = randomstring(15);
  //   $vericode = bin2hex(random_bytes(20));
  //   $vericode_expiry = date("Y-m-d H:i:s", strtotime("+1 day", strtotime(date("Y-m-d H:i:s"))));
  //   $db->update('arquivos', $id, ['token' => $vericode, 'expira_em' => $vericode_expiry]);
  //   //send the email
  //   $options = array(
  //     'nome_arquivo'  => $file_pointer[0]->nome,
  //     'email'         => rawurlencode($email),
  //     'vericode'      => $vericode,
  //     'expiry'        => $vericode_expiry,
  //     'nome_enviado'  => $user->data()->fname,
  //     'link'          => "https://files.tlv.ag/generate.php?vericode=" . $vericode . "&email=" . $email
  //   );

  //   $body =  email_body_send_files('assets/_email_template_send_files.php', $options);
  //   $subject = "[TLV] Você recebeu um link para download.";
  //   $encoded_email = rawurlencode($email);
  //   // $body =  "email do arquivo ... <br>" . $file ;
  //   $email_sent = email($email, $subject, $body);
  //   // logger($fuser->data()->id,"User","Requested password reset.");
  //   if (!$email_sent) {
  //     $errors[] = lang("ERR_EMAIL");
  //   }

  //   logger($user->data()->id, "Sendfile", "[".$file_pointer[0]->nome."]"."Gerado link e enviado por " . $user->data()->fname . " para o email " . $email );
  //   // echo "enviado";
  //   die();
  // }

  /**
   * DOWNLOAD E REGISTRAR LOGS DE DOWNLOAD
   * 
   */
  // if ($_GET["action"] == 'xdownload') {


  //   $file_pointer = $db->query("select * from arquivos where  id = " . $_GET["id"])->results();
  //   // dump($file_pointer);
  //   $file = "upload/" . $file_pointer[0]->arquivo_fisico;

  //   /* Essa expressão testa de o arquivos começa ou termina com .(Dot) */
  //   // if (preg_match('/^[^.][-a-z0-9_.]+[a-z]$/i', $file_pointer[0]->nome)) {
  //   // Process download
  //   if (file_exists($file)) {
  //     header('Content-Description: File Transfer');
  //     header('Content-Type: application/octet-stream');
  //     header('Content-Disposition: attachment; filename="' . basename($file) . '"');
  //     header('Expires: 0');
  //     header('Cache-Control: must-revalidate');
  //     header('Pragma: public');
  //     header('Content-Length: ' . filesize($file));
  //     flush(); // Flush system output buffer
  //     readfile($file);

  //     //atualiza contador
  //     $total = $file_pointer[0]->downloads + 1;
  //     $db->update('arquivos', $_GET["id"], ['downloads' => $total, 'ultimo_download' => date('Y-m-d H:i:s')]);
  //     logger($fuser->data()->id, "Download", $fuser->data()->fname . " fez o download do arquivo " . $file_pointer[0]->nome);


  //     die();
  //   } else {
  //     // echo "Arquivo não existente";
  //     logger($fuser->data()->id, "Download", $fuser->data()->fname . " tentou fazer o download do arquivo " . $file_pointer[0]->nome . " mas o arquivo não foi encontrado fisicamente em nossos servidores.");
  //     // http_response_code(404);
  //     die();
  //   }
  //   // } else {
  //   //   die("Arquivo não passou pela verificação de caracteres!");
  //   // }
  // }


} else {

  echo "302"; //nao autenticado
  die();
  
}




// Nas versões do PHP que antecedem a versão 4.1.0, é preciso usar o $HTTP_POST_FILES em vez do $_FILES.

// $uploaddir = 'upload/';
// $nomeArquivo = basename( $_FILES['fileToUpload']['name']);
// $uploadfile = $uploaddir .  basename( $_FILES['fileToUpload']['name']);
// $categoria = $_POST['categoria'];
// $evento = $_POST['evento'];

// $fields = array(
//   'token'       => $token,
//   'categoria'   => $categoria,
//   'evento'      => $evento,
//   'data_envio'  => date('Y-m-d H:i:s'),
//   'user_id'     => $user->data()->id,
//   'nome'        => $nomeArquivo
// );


// // $uploadfile = $uploaddir . basename($_FILES['fileToUpload']['name']);

// echo "<pre>";

// // dump($fields);

// if (move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $uploadfile)) {
//   echo "O arquivo é valido e foi carregado com sucesso.\n";


//   echo "result : " . $insert = $db->insert("arquivos", $fields);


// } else {
//   echo "Algo está errado aqui!\n";
// }

// // echo "Aqui estão algumas informações de depuração para você:";
// // print_r($_FILES);

// print "</pre>";
