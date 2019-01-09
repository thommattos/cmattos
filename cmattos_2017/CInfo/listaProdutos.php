﻿<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../projeto_loja/dist/css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/menu.css" />
	<link rel="stylesheet" href="css/faq.css" />
	<style>

	</style>
</head>
<body>
<!-- MENU -->
	<div class="menu">
		<div class="left"> <a href="index.html"><img src="logo2.png"></a> </div>

		<div class="right">
			<a class="menulink" href="#"> PERFIL </a>

			<a class="menulink" href="#"> SAIR </a>
		</div>
	</div> <br/>

<!-- LINKS -->
	<div class="opcoes">
		<div class="op" onclick="location.href='sobre.html';"> <h2> SOBRE </h2> </div>
		<div class="op" onclick="location.href='produtos.html';"> <h2> PRODUTOS </h2> </div>
		<div class="op" onclick="location.href='faq.html';"> <h2> FAQ </h2> </div>
	</div>

<!-- MODAL -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">Produto tal</h4>
				</div>
				<div class="modal-body">

					<form class="formProduto">
						<div class="form-group">
							<label for="exampleInputEmail1">Título</label>
							<input type="text" class="form-control" id="inpTitulo" placeholder="Ex: Monitor 18' Marca tal">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Tipo</label>
							<input type="text" class="form-control" id="inpTipo" placeholder="Produto">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Descrição</label>
							<textarea class="form-control" id="inpDescricao" placeholder="Preencha a descrição do produto" rows="4"></textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputFile">Adicionar Imagem</label>
							<input type="file" id="exampleInputFile">
							<p class="help-block">Imagens no formato png ou jpg.</p>
						</div>
						<!--<div class="checkbox">
							<label>
							<input type="checkbox"> Check me out
							</label>
						</div>-->
						<button type="submit" class="btn btn-default">Submit</button>
						<p>One fine body&hellip;</p>
					</form>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
					<button type="button" class="btn btn-primary">Salvar alterações</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

<!-- CONTEUDO -->
	<div class="conteudo">

		<h1 style="color:lightgreen;">CATÁLOGO</h1>

		
		<?php
		/* Fazer uso de /projeto_loja/script/conexao.php
			na O.O. para liberar acesso
		*/
		//echo (count(glob("produtos/*",GLOB_ONLYDIR))); 
		
		if (is_dir('produtos/1')) { ?>
<!--
		<div class="item">
			<?php if (is_file('produtos/1/1.jpg')) { ?>
			<a target="_blank" href="display.jpg">
				<img src="display.jpg" class="produto">
			</a>
			<?php } else { echo '<img src="produtos/nenhum.png" class="produto">'; } ?>
			<h2>Titulo</h2>
			<h3>Tipo</h3>
			<span class="desc">Descrição: 90 linhas no máximo + ...</span> <br/>
			<div class="centerBtn">
				<button class="btn btn-primary" value="1">EDITAR</button> 
				<button class="btn btn-danger">EXCLUIR</button>
			</div> <br/>
		</div>
-->
		<?php } ?>
		
		<div class="item">
			<?php if (is_file('produtos/1/display.jpg')) { ?>
			<a target="_blank" href="produtos/1/display.jpg">
				<img src="produtos/1/display.jpg" class="produto">
			</a>
			<?php } else { echo '<img src="produtos/nenhum.png" class="produto">'; } ?>
			<h2>Titulo</h2>
			<h3>Tipo</h3>
			<span class="desc">Descrição: 
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
			Integer posuere erat a ante.</span> <br/>
			<div class="centerBtn">
				<button class="btn btn-primary">EDITAR</button> 
				<button class="btn btn-danger">EXCLUIR</button>
			</div> <br/>
		</div>
		
		<div class="item">
			<img src="produtos/1/display.jpg" class="produto">
			<h2>Titulo</h2>
			<h3>Tipo</h3>
			<span class="desc">Descrição:
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.
			</span> <br/>
			<div class="centerBtn">
				<button class="btn btn-primary">EDITAR</button> 
				<button class="btn btn-danger">EXCLUIR</button>
			</div> <br/>
		</div>
		
	</div>

	<!--<footer> 2016 @ Mattos Informática </footer>-->

    <script src="../projeto_loja/dist/js/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="../projeto_loja/dist/js/bootstrap.min.js" type="text/javascript"></script>
	<script>
		$(".btn-primary").click(function() {

			$(".formProduto")[0].reset();
			
			if ( $(this).val() == 1 ) {
				//alert(1);
				$("#inpTitulo").val("Produto 1");
			}
			
			$('#myModal').modal("show");

		} );
	</script>
</body>
</html>