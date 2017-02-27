<?php
require("permissao_documento.php");
error_reporting  (E_ERROR | E_WARNING | E_PARSE);
require("funcoes.php");

if(strlen($_GET["cd"]) >0){
	$cd = trim($_GET["cd"]);
	require("../includes/conectar_mysql.php");
	$query = "SELECT * FROM links WHERE cd='" . $cd . "'";
	$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
	$registro = mysql_fetch_assoc($result);
	$nome = $registro["nome"];
	$link = $registro["link"];
	$tipo = $registro["tipo"];
	$ordem = $registro["ordem"];
	require("../includes/desconectar_mysql.php");
}

inicio_pagina(true);
monta_formulario();
final_pagina(); 

function monta_formulario(){
	global $cd, $nome, $link, $tipo, $ordem;
?>
	<script language="javascript">
		function valida_form(){
			var f = document.forms[0];
			if((f.nome.value == "") || (f.link.value == "")){
				alert('Preencha todos os campos!');
				return false;
			}
			else return true;
		}
	</script>
	<span class="celula"><B>Formulário de Cadastro de Links</B></span><br><br>
	<table>
		<form onSubmit="return valida_form();" action="salva_link.php" method="post">
		<tr>
			<td align="right">Nome:</td>
			<td><input type="text" name="nome" value="<?=$nome?>" size="31" maxlength="255"></td>
		</tr>
		<tr>
			<td align="right">Link:</td>
			<td>
				<select name="tipo">
					<option value="1" <? if($tipo == 1) echo("selected"); ?>>http://</option>
					<option value="2" <? if($tipo == 2) echo("selected"); ?>>ftp://</option>
					<option value="3" <? if($tipo == 3) echo("selected"); ?>>mailto:</option>
				</select>&nbsp;<input type="text" name="link" value="<?=$link?>" size="20" maxlength="255">
			</td>
		</tr>
		<tr>
			<td align="right">Ordem:</td>
			<td><input type="text" name="ordem" value="<?=$ordem?>" size="31" maxlength="255"></td>
		</tr>
		<tr>
			<td></td>
			<td align="right"><input type="reset" value="Cancelar"><input type="submit" value="Salvar"></td>
		</tr>
		<? 
			if(strlen($cd)>0){
				echo('<input type="hidden" name="modo" value="update">');
				echo('<input type="hidden" name="cd" value="' . $cd . '">');
			}
			else echo('<input type="hidden" name="modo" value="add">');
		?>
		</form>
	</table>
<?
}
?>