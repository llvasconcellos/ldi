<?
require("includes/funcoes_layout.php");
inicio_pagina(); ?>
<div style="width:570px; margin-top: 20px; margin-left: 15px; font-family:Arial, Helvetica, sans-serif;">
	<a href="javascript:window.history.back()"><img border="0" src="estrutura/seta.gif" align="middle">&nbsp;&nbsp;volta</a>
</div><br>
<div style="width:570px; height:420px; margin-left:15px; overflow:auto; font-family:Arial, Helvetica, sans-serif; background-color:#FAFAFA;">
<?
if(strlen($_GET["pagina"]) == 0) $pagina = 1;
else $pagina = $_GET["pagina"];
$registros_pagina = 6;
$limite = (6 * ($pagina -1));
$query_limit = " LIMIT " . $limite . "," . $registros_pagina;

$busca = $_REQUEST["busca"];
$familia = $_GET["familia"];
if((empty($familia)) && (empty($busca))) mostra_texto("produtos");
else{
	require("includes/conectar_mysql.php");
	if(empty($busca)){
		$query = "SELECT count(cd) FROM produtos WHERE familia=" . $familia;
		$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
		$registro = mysql_fetch_row($result);
		$quantidade = $registro[0];
		
		$query = "SELECT * FROM produtos WHERE familia=" . $familia . " ORDER BY ordem " . $query_limit;
		$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
		if(mysql_num_rows($result) == 0)echo('<span style="font-size:12px;">Nenhum Produto Cadastrado Nesta Família.</span>');
	}
	else{
		$query = "SELECT count(cd) FROM produtos WHERE codigo LIKE '%" . $busca . "%' OR produto LIKE '%" . $busca . "%' OR descricao LIKE '%" . $busca . "%'";
		$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
		$registro = mysql_fetch_row($result);
		$quantidade = $registro[0];
		
		$query = "SELECT * FROM produtos WHERE codigo LIKE '%" . $busca . "%' OR produto LIKE '%" . $busca . "%' OR descricao LIKE '%" . $busca . "%' ORDER BY familia, ordem" . $query_limit;
		$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
		if(mysql_num_rows($result) == 0)echo('<span style="font-size:12px;">Nenhum Produto Encontrado.</span>');
	}
	$contador = 0;
	?><table width="100%" cellpadding="0" cellspacing="0" border="0"><?
	while($registro = mysql_fetch_assoc($result)){
		if($contador == 0) echo('<tr><td width="47%" bgcolor="#FFFFFF" style="border: 1px solid gray;">');
		elseif($contador == 1) echo('</td><td width="5%">&nbsp;</td><td width="47%" bgcolor="#FFFFFF" style="border: 1px solid gray;">');
		?>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" background="estrutura/fundo_item_01.gif" style="background-repeat:no-repeat;">
			<tr>
				<td width="100" align="right"><? if(strlen($registro["imagem"]) > 0) echo('<a href="#" onClick="void window.open(\'' . $registro["imagem"] . '\', \'_blank\', \'width=' . $registro["largura_imagem"] . ',height=' . $registro["altura_imagem"] . ',status=no,resizable=yes,top=20,left=80\');"><img border="0" src="' . $registro["imagem_thumb"] . '"></a>'); else echo('<span style="font-size:12px; color:#666666; text-align: center;">Imagem não disponível</span>'); ?></td>
				<td align="right">
					<table width="100%" height="105" cellpadding="0" cellspacing="0" border="0" style="font-size:12px;">
						<tr>
							<td width="91" align="right" style="color:#666666;"><? if($registro["preco_promocao"] == 0) echo("valor"); else echo("de"); ?></td>
							<td width="13">&nbsp;</td>
							<td width="76"><? if ($registro["preco"] == 0) echo("Sob Consulta"); else echo('R$&nbsp;' . number_format($registro["preco"],2,',','.'));?></td>
						</tr>
						<?
						if((int)$registro["preco_promocao"] == 0) echo('<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>');
						else echo('<tr><td align="right" style="color:#666666;">para</td><td>&nbsp;</td><td>R$&nbsp;' . number_format($registro["preco_promocao"],2,',','.') . '</td></tr>');
						?>
						<tr>
							<td align="right" style="color:#666666;">imposto</td>
							<td>&nbsp;</td>
							<td><? if($registro["imposto"] == 0) echo("incluso"); else echo(str_replace(".",",",str_replace(".00","",sprintf("%01.2f", $registro["imposto"]))) . $registro["tipo_imposto"]);?></td>
						</tr>
						<tr>
							<td align="right" style="color:#666666;">prazo de entrega</td>
							<td>&nbsp;</td>
							<td><?=$registro["prazo"]?></td>
						</tr>
					</table>				
				</td>
			</tr>
		</table>
		<table width="100%" height="30" style="font-size:12px;">
			<tr>
				<td><b><?=$registro["produto"]?></b></td>
			</tr>
		</table>
		<table width="100%" height="130" cellpadding="0" cellspacing="0" border="0" background="estrutura/fundo_item_02.gif" style="font-size:12px;">
			<tr>
				<td width="70" style="color:#666666;" align="right">código</td>
				<td width="10">&nbsp;</td>
				<td><?=$registro["codigo"]?></td>
			</tr>
			<tr>
				<td style="color:#666666;" align="right" valign="top">detalhes</td>
				<td>&nbsp;</td>
				<td rowspan="2" style="font-size:10px;"><?=$registro["descricao"]?></td>
			</tr>
			<tr>
				<td align="right" valign="top">
					<?
					if(!empty($registro["pdf"])){
						?>
						<a href="<?=$registro["pdf"]?>" target="_blank"><img border="0" src="estrutura/botao_pdf.gif"></a>
						<?
					}
					?>
				</td>
				<td>&nbsp;</td>
			</tr>
		</table>
		<table border="0" cellspacing="0" cellpadding="0" align="right">
			<tr> 
				<td width="2"><img src="estrutura/quant.gif" width="56" height="25"></td>
				<td width="50" background="quant_menu.gif"> 
					<input type="text" name="textfield2" size="5">
				</td>
				<td width="10"><a href="cesta.htm"><img src="estrutura/botao_comprar_01.gif" width="68" height="25" border="0"></a></td>
				<td width="3"><a href="#" onClick="void window.open('recomendar.php?cd=<?=$registro["cd"]?>', '_blank', 'width=300,height=150,status=no,resizable=yes,top=20,left=80');"><img border="0" src="estrutura/botao_recomendar.gif" width="89" height="25"></a></td>
			</tr>
		</table>
		
		<?
		$contador++;
		if($contador == 2){
			echo('</td></tr><tr><td><br><br></td></tr>');
			$contador = 0;
		}
	}
	if($contador == 1) echo('</td><td width="5%">&nbsp;</td><td width="47%">&nbsp;</td>');
	echo('</table>');
	?>
	<table width="100%" style="font-family:Webdings;">
		<tr>
			<td></td>
			<td class="apagar" align="center">
				<?
				if($pagina != 1){
					if(empty($busca)){
						echo('<a href="' . $_SERVER['SCRIPT_NAME'] . '?familia=' . $familia . '&pagina=' . ($pagina-1) . '">7</a>');
					}
					else{
						echo('<a href="' . $_SERVER['SCRIPT_NAME'] . '?busca=' . $busca . '&pagina=' . ($pagina-1) . '">7</a>');
					}
				}
				if(($quantidade/$registros_pagina)>$pagina){
					if(empty($busca)){
						echo('<a href="' . $_SERVER['SCRIPT_NAME'] . '?familia=' . $familia . '&pagina=' . ($pagina+1) . '">8</a>');
					}
					else{
						echo('<a href="' . $_SERVER['SCRIPT_NAME'] . '?busca=' . $busca . '&pagina=' . ($pagina+1) . '">8</a>');
					}
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