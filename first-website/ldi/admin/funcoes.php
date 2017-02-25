<?
function inicio_pagina($formulario){
	?>
	<html>
		<head>
			<title>Administração Site LDI</title>
			<link href="estilo.css" rel="stylesheet">
		</head>
		<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="background-repeat:no-repeat; background-color:#C2C2C2" background="../estrutura/fundo_02.jpg" <? if($formulario) echo(' onLoad="document.forms[0].elements[0].focus();"');?>>
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td width="190" height="105">&nbsp;</td>
					<td>&nbsp;</td>
					<td width="150">&nbsp;</td>
				</tr>
				<tr>
					<td rowspan="2" valign="top">
						<table width="100%" border="0">
							<tr>
								<td height="50">&nbsp;</td>
							</tr>
							<tr>
								<td valign="top">
									<? menu(); ?>
								</td>
							</tr>
						</table>
					</td>
					<td valign="top"><div style="margin-left: 50px; margin-top: 50px;">
	<?
}

#######################################################################################################################

function final_pagina(){
	?>
						</div>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</body>
	</html>
	<?
}

#######################################################################################################################

function menu(){
	?>
	<div style="width: 97%; height: 20px; color:#FFFFFF; background-color:#666666; font-weight: bold;">Produtos</div>
	<a href="form_familia.php">Nova Família</a><br>
	<a href="browser_familias.php">Busca de Familias</a><br>
	<a href="form_produto.php">Novo Produto</a><br>
	<a href="browser_produtos.php">Busca de Produtos</a><br><br>

	<div style="width: 97%; height: 20px; color:#FFFFFF; background-color:#666666; font-weight: bold;">Textos</div>
	<a href="form_texto.php?texto=home">Pagina Inicial</a><br>
	<a href="form_texto.php?texto=empresa">A Empresa</a><br>
	<a href="form_texto.php?texto=politica">Política da Empresa</a><br>
	<a href="form_texto.php?texto=contatos">Contatos</a><br>
	<a href="form_texto.php?texto=produtos">Produtos</a><br>
	<a href="form_texto.php?texto=localizacao">Localização</a><br><br>
	
	<div style="width: 97%; height: 20px; color:#FFFFFF; background-color:#666666; font-weight: bold;">Contatos</div>
	<a href="form_contato_categoria.php">Nova Categoria</a><br>
	<a href="browser_contato_categoria.php">Busca de Categorias</a><br>
	<a href="form_contato.php">Novo Contato</a><br>
	<a href="browser_contatos.php">Busca de Contatos</a><br><br>
	
	<div style="width: 97%; height: 20px; color:#FFFFFF; background-color:#666666; font-weight: bold;">Links</div>
	<a href="form_link.php">Novo Link</a><br>
	<a href="browser_links.php">Busca de Links</a><br><br>
	
	<div style="width: 97%; height: 20px; color:#FFFFFF; background-color:#666666; font-weight: bold;"><a style="color:#FFFFFF;" href="form_config.php">Configurações</a></div>
	<?
}

#######################################################################################################################

function caminho(){
	$pedacos = explode("/", $_SERVER['PATH_INFO']);
	$localizacao = "";
	for($i = 0; $i < count($pedacos)-1; $i++){
		$localizacao .= $pedacos[$i] . "/";
	}
	$local = "http://" . $_SERVER['HTTP_HOST'] . $localizacao;
	return $local;
}

#######################################################################################################################

function altera_valor($chave, $valor){
	require("../includes/conectar_mysql.php");
	$query = "UPDATE config SET valor='" . $valor . "' WHERE chave='" . $chave . "'";
	$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
	require("../includes/desconectar_mysql.php");
}
function retorna_config($chave){
	require("../includes/conectar_mysql.php");
	$query = "SELECT valor FROM config WHERE chave='" . $chave . "'";
	$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
	$valor = mysql_fetch_assoc($result);
	return $valor["valor"];
	require("../includes/desconectar_mysql.php");
}
?>