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
	<span class="celula"><B>Contatos Cadastrados no Sistema</B></span><br><br>
	<table>
		<tr>
			<form action="<?=$_SERVER['SCRIPT_NAME']?>" method="post">
			<td>Nome:</td>
			<td><input type="text" name="filtro"></td>
			<td><input type="submit" value="Busca"></td>
			</form>
		</tr>
	</table>
	<br><br>
	<table cellpadding="0" cellspacing="0" style="border: 2px solid;" border="0">
		<tr bgcolor="#CCCCCC">
			<td width="20"></td>
			<td width="130">Nome</td>
			<td width="100">Categoria</td>
			<td width="100">Email</td>
			<td width="70" align="center">Telefone</td>
			<td width="70" align="center">Celular</td>
			<td width="20"></td>
		</tr>
		<?
		require("../includes/conectar_mysql.php");
		$query = "SELECT count(cd) FROM contatos WHERE nome LIKE '%" . $_REQUEST["filtro"] . "%'";
		$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
		$registro = mysql_fetch_row($result);
		$quantidade = $registro[0];
		
		$query = "SELECT c.cd, cc.categoria, c.nome, c.email, c.telefone, c.celular FROM contatos c LEFT OUTER JOIN contato_categoria cc ON cc.cd = c.categoria WHERE c.nome LIKE '%" . $_REQUEST["filtro"] . "%' " . $query_limit;
		$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
		if(mysql_num_rows($result) == 0){
			if(strlen($_REQUEST["filtro"]) == 0) echo('<tr><td colspan="6">Nenhum Contato Cadastrado</td></tr>');
			else echo('<tr><td colspan="6">Nenhum Contato Encontrado</td></tr>');
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
					<td class="editar"><a href="form_contato.php?cd=<?=$registro['cd']?>">$</a></td>
					<td><?=$registro["nome"]?></td>
					<td><?=$registro["categoria"]?></td>
					<td><?=$registro["email"]?></td>
					<td align="right"><?=$registro["telefone"]?></td>
					<td align="right"><?=$registro["celular"]?></td>
					<td class="apagar" align="center"><a href="#" onClick="confirma_apagar(<?=$registro['cd']?>,'contatos');">r</a></td>
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