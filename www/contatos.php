<?
require("includes/funcoes_layout.php");
inicio_pagina(); ?>
<div style="width:570px; margin-top: 20px; margin-left: 15px; font-family:Arial, Helvetica, sans-serif;">
	<a href="javascript:window.history.back()"><img border="0" src="estrutura/seta.gif" align="middle">&nbsp;&nbsp;volta</a>
</div><br>
<div style="width:570px; height:420px; margin-left:15px; overflow:auto; font-family:Arial, Helvetica, sans-serif;">
<?
if(strlen($_GET["pagina"]) == 0) $pagina = 1;
else $pagina = $_GET["pagina"];
$registros_pagina = 6;
$limite = (6 * ($pagina -1));
$query_limit = " LIMIT " . $limite . "," . $registros_pagina;


$categoria = $_GET["categoria"];
if(empty($categoria)) mostra_texto("contatos");
else{
	require("includes/conectar_mysql.php");
	$query = "SELECT count(cd) FROM contatos WHERE categoria=" . $categoria;
	$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
	$registro = mysql_fetch_row($result);
	$quantidade = $registro[0];
	
	$query = "SELECT * FROM contatos WHERE categoria=" . $categoria . $query_limit;
	$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
	if(mysql_num_rows($result) == 0)echo('<span style="font-size:12px;">Nenhum Contato Cadastrado Nesta Categoria.</span>');
	while($registro = mysql_fetch_assoc($result)){
		if(!empty($registro["nome"])) $nome = $registro["nome"];
		if(!empty($registro["email"])) $email = '<b>Email: </b><a href="mailto: ' . $registro["email"] . '">' . $registro["email"] . '</a><br>';
		if(!empty($registro["telefone"])) $telefone = "<b>Telefone: </b>" . $registro["telefone"] . "<br>";
		if(!empty($registro["celular"])) $celular = "<b>Celular: </b>" . $registro["celular"] . "<br>";
		if(!empty($registro["ramal"])) $ramal = "<b>Ramal: </b>" . $registro["ramal"] . "<br>";
		if(!empty($registro["texto"])) $texto = $registro["texto"];
		?>
		<table width="450" border="0" cellspacing="0" cellpadding="0" background="estrutura/repre_titulo_fundo.jpg">
			<tr>
				<td width="5%">&nbsp;</td>
				<td height="23"><?=$nome?></td>
			</tr>
		</table>
		<table width="450" border="0" cellspacing="0" cellpadding="0" height="102" background="estrutura/repre_corpo_fundo.jpg">
			<tr> 
				<td width="5%">&nbsp;</td>
				<td align="left" valign="top"> 
				<p>
					<font size="2" face="Verdana, Arial, Helvetica, sans-serif">
					<?=$email?>
					<?=$telefone?>
					<?=$celular?>
					<?=$ramal?>
					<?=$texto?>
					</font>
				</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" background="estrutura/repre_barra_rodape.jpg"></td>
			</tr>
		</table><br><br>
		<?
	}
	?>
	<table width="100%" style="font-family:Webdings;">
		<tr>
			<td></td>
			<td class="apagar" align="center">
				<?
				if($pagina != 1){
					echo('<a href="' . $_SERVER['SCRIPT_NAME'] . '?categoria=' . $categoria . '&pagina=' . ($pagina-1) . '">7</a>');
				}
				if(($quantidade/$registros_pagina)>$pagina){
					echo('<a href="' . $_SERVER['SCRIPT_NAME'] . '?categoria=' . $categoria . '&pagina=' . ($pagina+1) . '">8</a>');
				}
				?>
			</td>
			<td></td>
		</tr>
	</table>
	<?
}
?>
</div>
<? final_pagina(); ?>