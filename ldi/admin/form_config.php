<?php
require("permissao_documento.php");
error_reporting  (E_ERROR | E_WARNING | E_PARSE);
require("funcoes.php");

if($_POST["modo"] == "update"){
	switch($_POST["config"]){
		case "senha":
			altera_valor("senha",$_POST["senha"]);
			$msg = "Senha alterada com sucesso!";
			break;
		case "email":
			altera_valor("email",$_POST["email"]);
			$msg = "Email alterado com sucesso!";
			break;
		case "offline":
			altera_valor("offline",$_POST["offline"]);
			$msg = "Status do site alterado com sucesso!";
			break;
	}
}


inicio_pagina(true);
monta_formulario();
final_pagina(); 

function monta_formulario(){
	global $msg;
	if($_POST["modo"] == "update") echo('<span style="color: #FF0000; font-weight: bold;">' . $msg . '</span><br><br>');
?>
	<span class="celula"><B>Senha de Administrador</B></span><br><br>
	<script language="javascript">
		function confirma_senha(){
			var f = document.forms[0];
			if(f.senha.value != f.confirma.value){
				alert('A senha não confere.');
				return false;
			}
			else return true;
		}
	</script>
	<table>
		<form onSubmit="return confirma_senha();" action="<?=$_SERVER['SCRIPT_NAME']?>" method="post">
		<tr>
			<td align="right">Senha:</td>
			<td><input type="password" name="senha" size="20" maxlength="255"></td>
		</tr>
		<tr>
			<td align="right">Confirma Senha:</td>
			<td><input type="password" name="confirma" size="20" maxlength="255"></td>
		</tr>
		<tr>
			<td></td>
			<td align="right"><input type="reset" value="Cancelar"><input type="submit" value="Salvar"></td>
		</tr>
		<input type="hidden" name="config" value="senha">
		<input type="hidden" name="modo" value="update">
		</form>
	</table>
	<hr><br>
	<span class="celula"><B>Email do Sistema</B></span><br><br>
	<table>
		<form action="<?=$_SERVER['SCRIPT_NAME']?>" method="post">
		<tr>
			<td align="right">Email:</td>
			<td><input type="text" name="email" value="<?=retorna_config("email")?>" size="20" maxlength="255"></td>
		</tr>
		<tr>
			<td></td>
			<td align="right"><input type="reset" value="Cancelar"><input type="submit" value="Salvar"></td>
		</tr>
		<input type="hidden" name="config" value="email">
		<input type="hidden" name="modo" value="update">
		</form>
	</table>
	<hr><br>
	<span class="celula"><B>Site Off-Line?</B></span><br><br>
	<table>
		<form action="<?=$_SERVER['SCRIPT_NAME']?>" method="post">
		<tr>
			<td align="right">Offline:</td>
			<td>
				<select name="offline">
					<option value="s" <? if(retorna_config("offline") == 's') echo('selected'); ?>>Sim</option>
					<option value="n" <? if(retorna_config("offline") == 'n') echo('selected'); ?>>Não</option>
				</select>
			</td>
		</tr>
		<tr>
			<td></td>
			<td align="right"><input type="reset" value="Cancelar"><input type="submit" value="Salvar"></td>
		</tr>
		<input type="hidden" name="config" value="offline">
		<input type="hidden" name="modo" value="update">
		</form>
	</table>
<?
}
?>