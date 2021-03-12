<?php
require_once 'users/init.php';
// if (!securePage($_SERVER['PHP_SELF'])){die();}


$db     = DB::getInstance();
$vericode     = isset($_GET['vericode']) ? $_GET['vericode'] : null;
$email = isset($_GET['email']) ? $_GET['email'] : null;
$file = $db->query("select * from arquivos where  token = '" . $vericode . "'     
       and  expira_em >= now()                   
")->results();

$link = $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";




/**
 * DOWNLOAD E REGISTRAR LOGS DE DOWNLOAD
 * 
 */
if(isset($_GET["action"])){
if ($_GET["action"] == 'xdownload') {

  // dump($file_pointer);
  $filePath = "upload/" . $file[0]->nome;



  /* Essa expressão testa de o arquivos começa ou termina com .(Dot) */
  // if (preg_match('/^[^.][-a-z0-9_.]+[a-z]$/i', $file_pointer[0]->nome)) {
  // Process download
  if (file_exists($filePath)) {
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename="' . basename($filePath) . '"');
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($filePath));
    flush(); // Flush system output buffer
    // die();
    readfile($filePath);

    // echo $filePath;

    //atualiza contador
    $total = $file[0]->downloads + 1;
    $db->update('arquivos', $file[0]->id, ['downloads' => $total, 'ultimo_download' => date('Y-m-d H:i:s')]);
    logger(0, "DownloadExterno",  "O usuário externo ". $email ." fez o download do arquivo " . $file[0]->nome);


    die();
  } else {
    // echo "Arquivo não existente";
    logger(0, "DownloadExterno", "O usuário ". $email ." tentou fazer o download do arquivo " . $file[0]->nome  );
    // http_response_code(404);
    die();
  }
  // } else {
  //   die("Arquivo não passou pela verificação de caracteres!");
  // }
}
}

?>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>

<head>
  <title></title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <style type="text/css">
    @media screen {
      @font-face {
        font-family: 'Lato';
        font-style: normal;
        font-weight: 400;
        src: local('Lato Regular'), local('Lato-Regular'), url(https://fonts.gstatic.com/s/lato/v11/qIIYRU-oROkIk8vfvxw6QvesZW2xOQ-xsNqO47m55DA.woff) format('woff');
      }

      @font-face {
        font-family: 'Lato';
        font-style: normal;
        font-weight: 700;
        src: local('Lato Bold'), local('Lato-Bold'), url(https://fonts.gstatic.com/s/lato/v11/qdgUG4U09HnJwhYI-uK18wLUuEpTyoUstqEm5AMlJo4.woff) format('woff');
      }

      @font-face {
        font-family: 'Lato';
        font-style: italic;
        font-weight: 400;
        src: local('Lato Italic'), local('Lato-Italic'), url(https://fonts.gstatic.com/s/lato/v11/RYyZNoeFgb0l7W3Vu1aSWOvvDin1pK8aKteLpeZ5c0A.woff) format('woff');
      }

      @font-face {
        font-family: 'Lato';
        font-style: italic;
        font-weight: 700;
        src: local('Lato Bold Italic'), local('Lato-BoldItalic'), url(https://fonts.gstatic.com/s/lato/v11/HkF_qI1x_noxlxhrhMQYELO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');
      }
    }

    /* CLIENT-SPECIFIC STYLES */
    body,
    table,
    td,
    a {
      -webkit-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%;
    }

    table,
    td {
      mso-table-lspace: 0pt;
      mso-table-rspace: 0pt;
    }

    img {
      -ms-interpolation-mode: bicubic;
    }

    /* RESET STYLES */
    img {
      border: 0;
      height: auto;
      line-height: 100%;
      outline: none;
      text-decoration: none;
    }

    table {
      border-collapse: collapse !important;
    }

    body {
      height: 100% !important;
      margin: 0 !important;
      padding: 0 !important;
      width: 100% !important;
    }

    /* iOS BLUE LINKS */
    a[x-apple-data-detectors] {
      color: inherit !important;
      text-decoration: none !important;
      font-size: inherit !important;
      font-family: inherit !important;
      font-weight: inherit !important;
      line-height: inherit !important;
    }

    /* MOBILE STYLES */
    @media screen and (max-width:600px) {
      h1 {
        font-size: 32px !important;
        line-height: 32px !important;
      }
    }

    /* ANDROID CENTER FIX */
    div[style*="margin: 16px 0;"] {
      margin: 0 !important;
    }
  </style>
</head>

<body style="background-color: #f4f4f4; margin: 0 !important; padding: 0 !important;">

  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <!-- LOGO -->
    <tr>
      <td bgcolor="#420e96" align="center">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
          <tr>
            <td align="center" valign="top" style="padding: 40px 10px 40px 10px;"> </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td bgcolor="#420e96" align="center" style="padding: 0px 10px 0px 10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
          <tr>
            <td bgcolor="#ffffff" align="center" valign="top" style="padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 4px; line-height: 48px;">
              <img src="https://tlv.ag/images/logo.png" width="125" height="120" style="display: block; border: 0px;" />
              <!-- <h2 style="font-size: 24px; font-weight: 400; margin: 2;">Download da TLV</h2> -->
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td bgcolor="#f4f4f4" align="center" style="padding: 0px 10px 0px 10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
          <tr>
            <td bgcolor="#ffffff" align="left" style="padding: 20px 30px 40px 30px; color: #666666; 
            font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; 
            line-height: 25px;">
              <p style="margin: 0;">


                <?php

                // dump($file);
                if (!empty($file)) {

                ?>



                  Clique no link abaixo para fazer o download do arquivo.
                  <br><br> O download ficará disponível
                  por 24hs, sendo necesssário gerar um novo link após esse período.


                <?php } else { ?>

                  <center>
                    <h4>

                      Infelizmente seu arquivo não está mais disponível.
                    </h4>
                    <br><br> O download ficou disponível
                    por 24hs, sendo necesssário nesse momento, gerar um novo link após esse período.
                  </center>


                <?php } ?>

              </p>


            </td>
          </tr>

          <?php if (!empty($file)) { ?>
            <tr>
              <td bgcolor="#ffffff" align="left">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td bgcolor="#ffffff" align="center" style="padding: 20px 30px 60px 30px;">
                      <table border="0" cellspacing="0" cellpadding="0">
                        <tr>



                          <td align="center" style="border-radius: 3px;" bgcolor="#420e96">
                            <a href='<?php echo   $link . "&action=xdownload"; ?>' target="_blank" style="font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #ffffff;
                                             text-decoration: none; color: #ffffff; text-decoration: none; padding: 15px 25px; border-radius: 2px;
                                              border: 1px solid #420e96; display: inline-block;">Fazer download</a></td>

                        </tr>
                      </table>
                    </td>
                  </tr>
                </table>
              </td>
            </tr> <!-- COPY -->
          <?php } ?>



          <!-- <tr>
            <td bgcolor="#ffffff" align="left" style="padding: 0px 30px 20px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;">
              <p style="margin: 0;"><center> 
                Caso ocorra alguma dúvida, deixe-nos saber. </p>

              </center>
            </td>
          </tr> -->
          <tr>
            <td bgcolor="#ffffff" align="left" style="padding: 0px 30px 40px 30px; border-radius: 0px 0px 4px 4px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;">
              <p style="margin: 0;">Obrigado por usar nossos serviços,<br>Equipe TLV</p>
            </td>
          </tr>
        </table>
      </td>
    </tr>

  </table>
</body>

</html>