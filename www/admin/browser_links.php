<?php
require("permissao_documento.php");
error_reporting  (E_ERROR | E_WARNING | E_PARSE);
require("funcoes.php");

if(strlen($_GET["pagina"]) == 0) $pagina = 1;
else $pagina = $_GET["pagina"];

$limite = (15 * ($pagina -1));
$query_limit = " LIMIT " . $limite . "," . 15;


inicio_pagina(true);
?>
	<script language="javascript">
		function confirma_apagar($codigo,$oque){
			if(window.confirm("Deseja apagar este registro?")) self.location = 'apagar.php?cd=' + $codigo + '&oque=' + $oque + '&origem=<?=$_SERVER['SCRIPT_NAME']?>';
		}
		
	</script>
	<span class="celula"><B>Links Cadastrados no Sistema</B></span><br><br>
	<table>
		<tr>
			<form action="<?=$_SERVER['SCRIPT_NAME']?>" method="post">
			<td>Link:</td>
			<td><input type="text" name="filtro"></td>
			<td><input type="submit" value="Busca"></td>
			</form>
		</tr>
	</table>
	<br><br>
	<table cellpadding="0" cellspacing="0" width="500" style="border: 2px solid;" border="0">
		<tr bgcolor="#CCCCCC">
			<td width="30"></td>
			<td width="100">Nome</td>
			<td width="200">Link</td>
			<td width="20">Ordem</td>
			<td width="20"></td>
		</tr>
		<?
		require("../includes/conectar_mysql.php");
		$query = "SELECT count(cd) FROM links WHERE nome LIKE '%" . $_REQUEST["filtro"] . "%' or link LIKE '%" . $_REQUEST["filtro"] . "%'";
		$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
		$registro = mysql_fetch_row($result);
		$quantidade = $registro[0];
		
		$query = "SELECT * FROM links WHERE nome LIKE '%" . $_REQUEST["filtro"] . "%' or link LIKE '%" . $_REQUEST["filtro"] . "%' ORDER BY ordem" . $query_limit;
		$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
		if(mysql_num_rows($result) == 0){
			if(strlen($_REQUEST["filtro"]) == 0) echo('<tr><td colspan="4">Nenhum Produto Cadastrado</td></tr>');
			else echo('<tr><td colspan="4">Nenhuma Produto Encontrado</td></tr>');
		}
		$i = 0;

		while($registro = mysql_fetch_assoc($result)){
			if($i == 0){ 
				?>
				<tr bgcolor="#F6F6F6" onMouseOver="this.bgColor='#FFFFFF';" onMouseOut="this.bgColor='#F6F6F6';">
				<?
				$i = 1;
			}
			else{
				?>
				<tr bgcolor="#EEEEEE" onMouseOver="this.bgColor='#FFFFFF';" onMouseOut="this.bgColor='#EEEEEE';">
				<?
				$i = 0;
			}
					?>
					<td class="editar"><a href="form_link.php?cd=<?=$registro['cd']?>">$</a></td>
					<td><?=$registro["nome"]?></td>
					<td><?=$registro["link"]?></td>
					<td align="center"><?=$registro["ordem"]?></td>
					<td class="apagar" align="center"><a href="#" onClick="confirma_apagar(<?=$registro['cd']?>,'links');">r</a></td>
				</tr>
				<?
		}
		require("../includes/desconectar_mysql.php");
		
		if(!empty($_REQUEST["filtro"])){
			$filtro = "&filtro=" . urlencode($_REQUEST["filtro"]);
		}
		?>
		<tr>
			<td></td>
			<td class="apagar" align="center">
				<?
				if($pagina != 1){
					echo('<a href="' . $_SERVER['SCRIPT_NAME'] . '?pagina=' . ($pagina-1) . $filtro . '">7</a>');
				}
				if(($quantidade/15)>$pagina){
					echo('<a href="' . $_SERVER['SCRIPT_NAME'] . '?pagina=' . ($pagina+1) . $filtro . '">8</a>');
				}
				?>
			</td>
			<td></td>
		</tr>
	</table>
<? final_pagina(); ?>