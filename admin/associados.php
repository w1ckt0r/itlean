<?php
require_once 'users/init.php';
if (!securePage($_SERVER['PHP_SELF'])) {
  die();
}
$hooks =  getMyHooks();
includeHook($hooks, 'pre');
require_once 'header.php';


$db = DB::getInstance();
?>

<!-- End Navbar -->
<div class="content">
            <a href="novo-associado.php" class="btn btn-primary btn-sm">Novo</a>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-success">
          <div class="row">
            <div class="col-8">
            <h2 class="card-title">Associados</h2>
            <!-- <p class="card-category"> -->
            <!-- </p> -->
            </div>

            <div class="col-4">
              <!-- <a href="novo-conteudo.php" class="btn btn-primary btn-sm">Incluir Novo Associado</a> -->
              <form class="">
                <!-- <label for="system-search">Search:</label> -->
                <div class="input-group focused">
                  <input class="form-control form-control-lg" 
                  style="font-size: 28px; height: 60px; color:blanchedalmond !important;"
                   id="system-search" name="q" 
                   placeholder="  Digite o nome da cidade " type="text">
                </div>
              </form>
            </div>
          </div>
          </div>
          <div class="card-body">





            <div class="table-responsive">
              <table id="tb" class="table">
                <thead class=" text-primary">
                  <th>Nome</th>
                  <!-- <th>Site</th> -->
                  <th>Telefone</th>
                  <th>Endereço e Número</th>
                  <th>Cidade e Estado</th>
                  <th>Logo</th>
                </thead>
                <tbody>
                  <?php

                  $associados = $db->query(" select * from associados ")->results();
                  foreach ($associados as $associado) {
                  ?>


                    <tr>
                      <td><b><?= $associado->nome ?></b></td>
                      <!-- <td><?= $associado->url ?></td>                       -->
                      <td><?= $associado->telefone ?></td>
                      <td><?= $associado->endereco ?></td>
                      <td><?= $associado->local ?></td>
                      <td></td>
                      <!-- <td><img src="assets/img/pci-power.jpg" alt=""></td> -->
                      <td><a href="editar-associados.php?id=<?= $associado->id ?>" class="btn btn-info btn-sm ">Editar</a></td>
                      <td><a href="#" data-id="<?= $associado->id ?>" class="btn btn-danger btn-sm delete-associado ">Excluir</a></td>
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


<script>
	$(document).ready(function() {
		$("#system-search").on("keyup", function() {

			//  $("#system-search").bind("keyup change", function(e) {
			// $("#system-search").on("keyup change", function() {
			var value = $(this).val().toLowerCase();
			// $("#myTable tr").filter(function() {
			//   $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			// });
			// $("#ul-convidados li").filter(function() {
			$("#tb tr ").filter(function() {
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			});
		});
	});
</script>