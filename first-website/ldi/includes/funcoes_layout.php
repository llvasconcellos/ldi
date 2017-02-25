<?
function inicio_pagina(){
	?>
	<html>
		<head>
			<title>LDI - Comércio de produtos eletrônicos LTDA</title>
			<link href="includes/estilo.css" rel="stylesheet">
			<script language="JavaScript">
				<!--
				function MM_swapImgRestore() { //v3.0
					var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
				}
				function MM_preloadImages() { //v3.0
					var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
					var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
					if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
				}
				function MM_findObj(n, d) { //v4.0
					var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
					d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
					if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
					for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
					if(!x && document.getElementById) x=document.getElementById(n); return x;
				}
				function MM_swapImage() { //v3.0
					var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
					if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
				}
				//-->
			</script>
		</head>
		<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="estrutura/fundo_02.jpg" style="background-repeat:no-repeat; background-color:#C2C2C2"  onLoad="MM_preloadImages('estrutura/bot_contatos_over.gif','estrutura/bot_produtos_over.gif','estrutura/bot_links_over.gif','estrutura/bot_ldi_over.gif','estrutura/bot_localizacao_over.gif','estrutura/bot_cadastro_over.gif')">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr> 
			<td width="178" valign="top">
				<? menu_lateral(); ?>
			</td>
			<td rowspan="2" valign="top" align="left"> 
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td valign="top">
							<? menu_horizontal(); ?>
						</td>
					</tr>
					<tr>
						<td width="600" align="left" valign="top">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="37" height="10">&nbsp;</td>
									<td width="400" height="10">&nbsp;</td>
								</tr>
								<tr>
									<td width="37">&nbsp;</td>
									<td width="400" valign="top">	<?
}

############################################################################################################################

function menu_horizontal(){
	?>
	<table border="0" cellspacing="0" cellpadding="0">
		<tr> 
			<td height="45" colspan="6">&nbsp;</td>
		</tr>
		<script language="JavaScript1.2" src="estrutura/fw_menu.js"></script>
		<script language="JavaScript">
			<!--
			function fwLoadMenus() {
				if (window.fw_menu_0) return;
				window.fw_menu_0 = new Menu("root",206,17,"Verdana, Arial, Helvetica, sans-serif",10,"#000000","#ff0000","#ffffff","#cccccc");
				<?
				require("includes/conectar_mysql.php");
				$query = "SELECT cd, familia FROM familias ORDER BY ordem";
				$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
				while($registro = mysql_fetch_assoc($result)){
					?>
					fw_menu_0.addMenuItem("<?=$registro["familia"]?>","location='produtos.php?familia=<?=$registro["cd"]?>'");
					<?
				}
				?>
				fw_menu_0.hideOnMouseOut=true;
				
				window.fw_menu_1 = new Menu("root",206,17,"Verdana, Arial, Helvetica, sans-serif",10,"#000000","#ff0000","#ffffff","#cccccc");
				<?
				$query = "SELECT cd, categoria FROM contato_categoria ORDER BY ordem";
				$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
				while($registro = mysql_fetch_assoc($result)){
					?>
					fw_menu_1.addMenuItem("<?=$registro["categoria"]?>","location='contatos.php?categoria=<?=$registro["cd"]?>'");
					<?
				}
				?>
				fw_menu_1.hideOnMouseOut=true;
				
				window.fw_menu_2 = new Menu("root",206,17,"Verdana, Arial, Helvetica, sans-serif",10,"#000000","#ff0000","#ffffff","#cccccc");
				<?
				$query = "SELECT * FROM links ORDER BY ordem";
				$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
				while($registro = mysql_fetch_assoc($result)){
					switch($registro["tipo"]){
						case 1:
							$protocolo = "http://";
							break;
						case 2:
							$protocolo = "ftp://";
							break;
						case 3:
							$protocolo = "mailto:";
							break;
					}
					?>
					fw_menu_2.addMenuItem("<?=$registro["nome"]?>","window.open('<?=$protocolo?><?=$registro["link"]?>');");
					<?
				}
				require("includes/desconectar_mysql.php");
				?>
				fw_menu_2.hideOnMouseOut=true;
				
				window.fw_menu_3 = new Menu("root",206,17,"Verdana, Arial, Helvetica, sans-serif",10,"#000000","#ff0000","#ffffff","#cccccc");
				fw_menu_3.addMenuItem("Empresa","location='pagina.php?pagina=empresa'");
				fw_menu_3.addMenuItem("Política da Empresa","location='pagina.php?pagina=politica'");
				fw_menu_3.writeMenus();
			} // fwLoadMenus()
			
			//-->
		</script>
		<script language="JavaScript1.2">fwLoadMenus();</script>
		<tr align="center"> 
			<td width="36">&nbsp;</td>
			<td width="55"><a href="index.php" onMouseOut="MM_swapImgRestore(); FW_startTimeout();" onMouseOver="MM_swapImage('A Ldi','','estrutura/bot_ldi_over.gif',1); window.FW_showMenu(window.fw_menu_3,215,70);"><img name="A Ldi" border="0" src="estrutura/bot_ldi.gif" width="55" height="33"></a></td>
			<td width="78"><a href="produtos.php" onMouseOut="MM_swapImgRestore(); FW_startTimeout();" onMouseOver="MM_swapImage('produtos','','estrutura/bot_produtos_over.gif',1); window.FW_showMenu(window.fw_menu_0,270,70);"><img name="produtos" border="0" src="estrutura/bot_produtos.gif" width="78" height="33"></a></td>
			<td width="87"><a href="pagina.php?pagina=contatos" onMouseOut="MM_swapImgRestore(); FW_startTimeout();" onMouseOver="MM_swapImage('contatos','','estrutura/bot_contatos_over.gif',1); window.FW_showMenu(window.fw_menu_1,348,70);"><img name="contatos" border="0" src="estrutura/bot_contatos.gif" width="87" height="33"></a></td>
			<td width="57"><a href="#" onMouseOut="MM_swapImgRestore(); FW_startTimeout();" onMouseOver="MM_swapImage('links','','estrutura/bot_links_over.gif',1); window.FW_showMenu(window.fw_menu_2,435,70);"><img name="links" border="0" src="estrutura/bot_links.gif" width="57" height="33"></a></td>
			<td width="102"><a href="pagina.php?pagina=localizacao" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('localizacao','','estrutura/bot_localizacao_over.gif',1)"><img name="localizacao" border="0" src="estrutura/bot_localizacao.gif" width="102" height="33"></a></td>
			<td width="84"><a href="login.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('cadastro','','estrutura/bot_cadastro_over.gif',1)"><img name="cadastro" border="0" src="estrutura/bot_cadastro.gif" width="84" height="33"></a></td>
			<td>&nbsp;</td>
		</tr>
	</table>
	<?
}

############################################################################################################################

function menu_lateral(){
	?>
	<table width="178" border="0" cellspacing="0" cellpadding="0" height="399" style="margin-top: 140px;">
		<tr> 
			<td valign="top"> 
				<table width="108" border="0" cellspacing="0" cellpadding="0" height="96">
					<tr> 
						<td valign="top" height="2" colspan="2"><img src="estrutura/menu_topo_busca.gif" width="170" height="23"></td>
						<td width="17" height="2"></td>
					</tr>
					<tr> 
						<td background="estrutura/menu_esq_fundo.gif" width="25" align="left" valign="top"></td>
						<td width="145" valign="top" background="estrutura/menu_corpo.gif" style="font-family:Arial, Helvetica, sans-serif; font-size: 8px;">
							<form action="produtos.php">
								<input type="text" name="busca" value="<?=$_REQUEST["busca"]?>" size="12" style="font-size:13px;">&nbsp;&nbsp;<input type="submit" value="ok">
							</form><br>
						</td>
					</tr>
					<tr> 
					<td background="estrutura/menu_esq_fundo.gif" width="25" height="176" align="left" valign="top"><img src="estrutura/menu_esq_titulo.gif" width="25" height="109"></td>
					<td width="145" valign="top" background="estrutura/menu_corpo.gif" style="font-family:Arial, Helvetica, sans-serif; font-size: 8px;">
						<?
						require("includes/conectar_mysql.php");
						$query = "SELECT cd, familia FROM familias ORDER BY ordem";
						$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
						if(mysql_num_rows($result) == 0) echo("Nenhuma Familia Cadastrada");
						while($familia = mysql_fetch_assoc($result)){
							?>
							<a title="<?=$familia["familia"]?>" href="produtos.php?familia=<?=$familia["cd"]?>"><?=$familia["familia"]?></a><br><br>
							<?
						}
						require("includes/desconectar_mysql.php");
						?>
						<br><br>
						<table width="141" border="0" cellspacing="0" cellpadding="0" height="66">
							<tr>
								<td width="132" height="11">
									<div align="center"><img src="estrutura/minhas_compras.gif" width="80" height="34"></div>
								</td>
								<td width="10" height="11">&nbsp;</td>
							</tr>
							<tr>
								<td width="132">
									<font size="1" face="Arial, Helvetica, sans-serif">voc&ecirc; tem 0 &iacute;tens na cesta de compras</font>
								</td>
								<td width="10">&nbsp;</td>
							</tr>
						</table>
					</td>
					<td></td>
				</tr>
				<tr>
					<td colspan="2" height="23" valign="top"><img src="estrutura/menu_rodape.gif" width="170" height="27"></td>
					<td></td>
				</tr>
			</table>
		</td>
	</tr>
	</table>
	<?
}

############################################################################################################################

function rodape(){
?>
<p><font face="Arial, Helvetica, sans-serif" size="1">LDI com&eacute;rcio de produtos eletr&ocirc;nicos LTDA.<br>
Rua Guia lopes 538 CEP: 89218-060 Santo Ant&ocirc;nio 
- Joinville - SC<br>
fone: (47) 435 6804/ 3026 6500 fax: (47) 3026 3743 <br>
<a href="mailto:ldi@ldi.com.br">ldi@ldi.com.br</a></font></p>
<?
}

############################################################################################################################

function final_pagina(){
	?>
	 </td>
				  </tr>
				</table>
			  </td>
			</tr>
		  </table>
		</td>
	  </tr>
	</table>
	</body>
	</html>
	<?
}

############################################################################################################################

function mostra_texto($texto){
	require("includes/conectar_mysql.php");
	$query = "SELECT conteudo FROM textos WHERE nome='" . $texto . "'";
	$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
	$text = mysql_fetch_row($result);
	require("includes/desconectar_mysql.php");
	echo('<p>' . $text[0] . '</p>');
}

############################################################################################################################

function retorna_config($chave){
	require("includes/conectar_mysql.php");
	$query = "SELECT valor FROM config WHERE chave='" . $chave . "'";
	$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
	$valor = mysql_fetch_assoc($result);
	return $valor["valor"];
	require("includes/desconectar_mysql.php");
}
?>