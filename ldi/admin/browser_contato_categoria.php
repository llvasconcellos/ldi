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
			if(window.confirm("Deseja apagar esta categoria e todos os contatos nela cadastrados?")) self.location = 'apagar.php?cd=' + $codigo + '&oque=' + $oque + '&origem=<?=$_SERVER['SCRIPT_NAME']?>';
		}
		
	</script>
	<span class="celula"><B>Categorias de Contatos Cadastrados no Sistema</B></span><br><br>
	<table>
		<tr>
			<form action="<?=$_SERVER['SCRIPT_NAME']?>" method="post">
			<td>Categoria:</td>
			<td><input type="text" name="filtro"></td>
			<td><input type="submit" value="Busca"></td>
			</form>
		</tr>
	</table>
	<br><br>
	<table cellpadding="0" cellspacing="0" width="400" style="border: 2px solid; ">
		<tr bgcolor="#CCCCCC">
			<td width="30"></td>
			<td>Nome</td>
			<td width="30">Ordem</td>
			<td width="20"></td>
		</tr>
		<?
		require("../includes/conectar_mysql.php");
		$query = "SELECT cd FROM contato_categoria WHERE categoria LIKE '%" . $_REQUEST["filtro"] . "%'";
		$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
		$quantidade = mysql_num_rows($result);
		
		$query = "SELECT cd, categoria, ordem FROM contato_categoria WHERE categoria LIKE '%" . $_REQUEST["filtro"] . "%' ORDER BY ordem" . $query_limit;
		$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
		if(mysql_num_rows($result) == 0){
			if(strlen($_REQUEST["filtro"]) == 0) echo('<tr><td colspan="4">Nenhuma Categoria Cadastrada</td></tr>');
			else echo('<tr><td colspan="4">Nenhuma Categoria Encontrada</td></tr>');
		}
		$i = 0;
		while($registro = mysql_fetch_assoc($result)){
			if($i == 0){
				?>
				<tr bgcolor="#F6F6F6" onMouseOver="this.bgColor='#FFFFFF';" onMouseOut="this.bgColor='#F6F6F6';">
					<td class="editar"><a href="form_contato_categoria.php?cd=<?=$registro['cd']?>">$</a></td>
					<td><?=$registro["categoria"]?></td>
					<td align="center"><?=$registro["ordem"]?></td>
					<td class="apagar" align="center"><a href="#" onClick="confirma_apagar(<?=$registro['cd']?>,'contato_categoria');">r</a></td>
				</tr>
				<?
				$i = 1;
			}
			else{
				?>
				<tr bgcolor="#EEEEEE" onMouseOver="this.bgColor='#FFFFFF';" onMouseOut="this.bgColor='#EEEEEE';">
					<td class="editar"><a href="form_contato_categoria.php?cd=<?=$registro['cd']?>">$</a></td>
					<td><?=$registro["categoria"]?></td>
					<td align="center"><?=$registro["ordem"]?></td>
					<td class="apagar" align="center"><a href="#" onClick="confirma_apagar(<?=$registro['cd']?>,'contato_categoria');">r</a></td>
				</tr>
				<?
				$i = 0;
			}
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