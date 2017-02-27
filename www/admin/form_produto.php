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
		$query = "SELECT * FROM produtos WHERE cd='" . $cd . "'";
		$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
		$registro = mysql_fetch_assoc($result);
		$familia = $registro["familia"];
		$codigo = $registro["codigo"];
		$produto = $registro["produto"];
		$preco = $registro["preco"];
		$preco_promocao = $registro["preco_promocao"];
		$imposto = $registro["imposto"];
		$prazo = $registro["prazo"];
		$descricao = $registro["descricao"];
		$peso = $registro["peso"];
		$pdf = $registro["pdf"];
		$ordem = $registro["ordem"];
		$tipo_imposto = $registro["tipo_imposto"];
		require("../includes/desconectar_mysql.php");
	}
?>
	<script language="javascript">
		function valida_form(){
			var f = document.forms[0];
			if((f.codigo.value == "") || (f.produto.value == "")){
				alert('Preencha os campos Codigo e Produto!');
				return false;
			}
			else return true;
		}
	</script>
	<span class="celula"><B>Formulário de Cadastro de Produtos</B></span><br><br>
	<table>
		<form onSubmit="return valida_form();" action="salva_produto.php" method="post" encType="multipart/form-data">
		<tr>
			<td align="right">Família:</td>
			<td>
				<select name="familia" style="width: 100%">
					<?php
					$query = "SELECT cd, familia FROM familias ORDER BY ordem";
					require("../includes/conectar_mysql.php");
					$result = mysql_query($query) or die("Erro na consulta ao Banco de dados: " . mysql_error());
					while($registro = mysql_fetch_array($result, MYSQL_ASSOC)){
						echo('<option value="' . $registro["cd"] . '"');
						if((!empty($cd)) && ($registro["cd"] == $familia)) echo(" selected");
						echo('>' . $registro["familia"] . '</option>');
					}
					require("../includes/desconectar_mysql.php");
					?>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Codigo:</td>
			<td><input type="text" name="codigo" value="<?=$codigo?>" size="20" maxlength="20" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Produto:</td>
			<td><input type="text" name="produto" value="<?=$produto?>" size="20" maxlength="255" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Preço:</td>
			<td><input type="text" name="preco" value="<?=$preco?>" size="20" maxlength="10" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Preço em Promoção:</td>
			<td><input type="text" name="preco_promocao" value="<?=$preco_promocao?>" size="20" maxlength="10" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Imposto em %:</td>
			<td><input type="text" name="imposto" value="<?=$imposto?>" size="20" maxlength="255" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Texto Imposto:</td>
			<td><input type="text" name="tipo_imposto" value="<?=$tipo_imposto?>" size="20" maxlength="20" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Prazo de Entrega:</td>
			<td><input type="text" name="prazo" value="<?=$prazo?>" size="20" maxlength="255" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Peso em g:</td>
			<td><input type="text" name="peso" value="<?=$peso?>" size="20" maxlength="15" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Ordem:</td>
			<td><input type="text" name="ordem" value="<?=$ordem?>" size="20" maxlength="5" style="width: 100%"></td>
		</tr>
		<tr>
			<td align="right">Imagem:</td>
			<td><input name="image" type="file" accept="image/jpeg, image/jpg" style="width: 100%;"></td>
		</tr>
		<tr>
			<td align="right">PDF:</td>
			<td><input type="file" name="pdf" accept="application/pdf" maxlength="255" style="width: 100%"></td>
			<? if((strlen($cd)>0) && (strlen($pdf)>0)) echo('<td><a href="salva_produto.php?modo=apaga_pdf&cd=' . $cd . '">[Apagar]</a></td>'); ?>
		</tr>
		<tr>
			<td align="right" valign="top">Descrição:</td>
			<td><textarea name="descricao" rows="5" cols="30" onKeyUp="contador.innerHTML = 'Quantidade de Caracteres: ' + this.value.length;" onKeyDown="if ((this.value.length > 254) && (event.keyCode != 8) && (event.keyCode != 46)  && (event.keyCode != 37)  && (event.keyCode != 38)  && (event.keyCode != 39)  && (event.keyCode != 40)) return false;"><?=$descricao?></textarea><div class="label" id="contador">Quantidade de Caracteres: 0</div></td>
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