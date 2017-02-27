<?php
require("permissao_documento.php");
error_reporting  (E_ERROR | E_WARNING | E_PARSE);
require("funcoes.php");

inicio_pagina(true);
monta_formulario();
final_pagina(); 

function monta_formulario(){
	if(strlen($_GET["cd"]) >0){
		$cd = trim($_GET["cd"]);
		require("../includes/conectar_mysql.php");
		$query = "SELECT * FROM contatos WHERE cd='" . $cd . "'";
		$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
		$registro = mysql_fetch_assoc($result);
		$categoria = $registro["categoria"];
		$nome = $registro["nome"];
		$email = $registro["email"];
		$telefone = $registro["telefone"];
		$celular = $registro["celular"];
		$ramal = $registro["ramal"];
		$texto = $registro["texto"];
		require("../includes/desconectar_mysql.php");
	}
?>
	<script language="javascript">
		function valida_form(){
			var f = document.forms[0];
			if((f.nome.value == "") || (f.telefone.value == "") || (f.email.value == "")){
				alert('Preencha os campos: nome, telefone e email!');
				return false;
			}
			else return true;
		}
	</script>
	<span class="celula"><B>Formulário de Cadastro de Contatos</B></span><br><br>
	<table>
		<form onSubmit="return valida_form();" action="salva_contato.php" method="post">
		<tr>
			<td align="right">Categoria:</td>
			<td width="250">
				<select name="categoria" style="width: 100%">
					<?php
					$query = "SELECT cd, categoria FROM contato_categoria ORDER BY ordem";
					require("../includes/conectar_mysql.php");
					$result = mysql_query($query) or die("Erro na consulta ao Banco de dados: " . mysql_error());
					while($registro = mysql_fetch_array($result, MYSQL_ASSOC)){
						echo('<option value="' . $registro["cd"] . '"');
						if((!empty($cd)) && ($registro["cd"] == $categoria)) echo(" selected");
						echo('>' . $registro["categoria"] . '</option>');
					}
					require("../includes/desconectar_mysql.php");
					?>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Nome:</td>
			<td><input type="text" name="nome" value="<?=$nome?>" size="20" maxlength="100" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Email:</td>
			<td><input type="text" name="email" value="<?=$email?>" size="20" maxlength="50" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Telefone Fixo:</td>
			<td><input type="text" name="telefone" value="<?=$telefone?>" size="20" maxlength="50" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Telefone Movel:</td>
			<td><input type="text" name="celular" value="<?=$celular?>" size="20" maxlength="50" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Ramal:</td>
			<td><input type="text" name="ramal" value="<?=$ramal?>" size="20" maxlength="5" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right" valign="top">Texto:<br><br>Dica:<br>Nova Linha = &lt;br&gt;<br>Negrito =  &lt;b&gt;&lt;/b&gt;</td>
			<td><textarea name="texto" rows="5" cols="30" onKeyUp="contador.innerHTML = 'Quantidade de Caracteres: ' + this.value.length;" onKeyDown="if ((this.value.length > 254) && (event.keyCode != 8) && (event.keyCode != 46)  && (event.keyCode != 37)  && (event.keyCode != 38)  && (event.keyCode != 39)  && (event.keyCode != 40)) return false;"><?=$texto?></textarea><div class="label" id="contador">Quantidade de Caracteres: 0</div></td>
		</tr>
		<tr>
			<td></td>
			<td align="right"><input type="reset" value="Cancelar"><input type="submit" value="Salvar"></td>
		</tr>
		<input name="MAX_FILE_SIZE" type="hidden" value="10000000">
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