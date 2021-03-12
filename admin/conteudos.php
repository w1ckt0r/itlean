<?php
require_once 'users/init.php';
// echo $_SERVER['PHP_SELF'];
// die();
if (!securePage($_SERVER['PHP_SELF'])) {
  die();
}
$hooks =  getMyHooks();
includeHook($hooks, 'pre');
require_once 'header.php';

?>

<!-- End Navbar -->
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-info">
            <h4 class="card-title">Conteudos</h4>
            <p class="card-category">
            <a href="conteudo.php" class="btn btn-primary btn-sm">Novo</a>
            </p>
          </div>
          <div class="card-body"> 
            <div class="table-responsive">
              <table class="table">
                <thead class=" text-primary">
                  <!-- <th>Imagem</th> -->
                  <th>Titulo</th>
                  <th>Views </th>
                  <th>Area</th>
                  <th>Status</th>
                  <th> </th>
                  <th>  </th>
                </thead>
                <tbody>
                  <?php
                  $db = DB::getInstance();
                  $files = $db->query("select * from conteudos  
                  
                    order by id desc ")->results();
                  
                  
                  // $files = $db->query("select * from conteudos where 
                  // user_id = " . $user->data()->id .
                  //  " order by id desc ")->results();
                  
                  
                  
                  
                   foreach ($files as $file) {
                  ?>
                    <tr>
                      <td width="40%"><?= $file->title ?></td>
                      <!-- <td></td> -->
                      <td class="text-primary" style="font-size: medium;" ><b> <?= $file->views ?></b> </td>
                      <td><?php                       
                        if($file->type == 1){ echo "Blog da Afrac";}
                        if($file->type == 2){ echo "Vitrine do Mercado";}
                        if($file->type == 3){ echo "Meios de pagamento";}                      
                        if($file->type == 4){ echo "Video";}                      
                      ?></td>
                      <td class="text-primary"><?= $file->status ?></td>
                      <td>
           
                        <a href="conteudo.php?id=<?= $file->id ?>"   
                        class=" btn btn-outline-info btn-sm    btn-round" data-id="<?= $file->id ?>">
                         <span class="material-icons">
                            edit
                          </span> </a>

                        <a href="" class="btn  btn-outline-danger btn-sm delete   btn-round" 
                        data-id="<?= $file->id ?>"> <span class="material-icons">
                            delete_forever
                          </span> </a>
                      </td>
                      <!-- <td></td> -->
                    </tr>

                  <?php }; ?>
       

                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- footer -->
<?php require_once 'footer.php'; ?>