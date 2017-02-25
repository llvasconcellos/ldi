<?
if($_POST["enviar"] == "sim"){
	require("includes/conectar_mysql.php");
	$query = "SELECT * FROM produtos WHERE cd=" . $_POST["produto"];
	$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
	$registro = mysql_fetch_assoc($result);
	$html = '<html><body><table width="100%"><tr><td width="267"><table width="267" cellpadding="0" cellspacing="0" border="0" background="http://www.ldi.com.br/estrutura/fundo_item_01.gif" style="background-repeat:no-repeat;">';
	$html .= '<tr><td width="100" align="right">';
	$html .= '<img border="0" src="http://www.ldi.com.br/' . $registro["imagem_thumb"] . '"></td><td align="right"><table width="100%" height="105" cellpadding="0" cellspacing="0" border="0" style="font-size:12px;">';
	$html .= '<tr><td width="91" align="right" style="color:#666666;">';
	if($registro["preco_promocao"] == 0) $html .= "valor";
	else $html .= "de";
	$html .= '</td>	<td width="13">&nbsp;</td><td width="76">R$&nbsp;' . number_format($registro["preco"],2,',','.') . '</td></tr>';
	if((int)$registro["preco_promocao"] == 0) $html .= '<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>';
	else $html .= '<tr><td align="right" style="color:#666666;">para</td><td>&nbsp;</td><td>R$&nbsp;' . number_format($registro["preco_promocao"],2,',','.') . '</td></tr>';
	$html .= '<tr><td align="right" style="color:#666666;">imposto</td><td>&nbsp;</td><td>';
	if($registro["imposto"] == 0) $html .= "incluso";
	else $html .= $registro["imposto"];
	$html .= '</td></tr><tr><td align="right" style="color:#666666;">prazo de entrega</td><td>&nbsp;</td><td>' . $registro["prazo"] . '</td>';
	$html .= '</tr></table></td></tr></table><table width="100%" height="30" style="font-size:12px;"><tr><td><b>' . $registro["produto"] . '</b></td>';
	$html .= '</tr></table><table width="100%" height="130" cellpadding="0" cellspacing="0" border="0" background="http://www.ldi.com.br/estrutura/fundo_item_02.gif" style="font-size:12px;">';
	$html .= '<tr><td width="70" style="color:#666666;" align="right">código</td><td width="10">&nbsp;</td><td>' . $registro["codigo"] . '</td></tr>';
	$html .= '<tr><td style="color:#666666;" align="right" valign="top">detalhes</td><td>&nbsp;</td><td rowspan="2" style="font-size:10px;">' . $registro["descricao"] . '</td></tr>';
	$html .= '<tr><td align="right" valign="top">';
	if(!empty($registro["pdf"])){
		$html .= '<a href="http://www.ldi.com.br/' . $registro["pdf"] . '" target="_blank"><img border="0" src="http://www.ldi.com.br/estrutura/botao_pdf.gif"></a>';
	}
	$html .= '</td><td>&nbsp;</td></tr></table><table border="0" cellspacing="0" cellpadding="0" align="right"><tr><td width="2"><img src="http://www.ldi.com.br/estrutura/quant.gif" width="56" height="25"></td>';
	$html .= '<td width="50" background="quant_menu.gif"><input type="text" name="textfield2" size="5"></td><td width="10"><a href="http://www.ldi.com.br"><img src="http://www.ldi.com.br/estrutura/botao_comprar_01.gif" width="68" height="25" border="0"></a></td>';
	$html .= '<td width="3"><img src="http://www.ldi.com.br/estrutura/botao_recomendar.gif" width="89" height="25"></td></tr></table></td><td>&nbsp;</td></table></body></html>';
	
	$to  = $_POST["email"];
	$subject = $_POST["nome"] . " indica um produto da LDI!";
	
	$headers  = "MIME-Version: 1.0\n";
	$headers .= "Content-type: text/html; charset=iso-8859-15\n";
	
	//$headers .= "To: " . $_POST["amigo"] . " <" . $_POST["email"] . ">\n";
	$headers .= "From: " . $_POST["nome"] . " <ldi@ldi.com.br>\n";

	mail($to, $subject, $html, $headers);
	
	require("includes/desconectar_mysql.php");
	enviado_ok();
}
else formulario();

function formulario(){
	?>
<html>
	<head>
		<title>Recomendar</title>
		<link href="includes/estilo.css" rel="stylesheet">
		<script language="javascript">
			function valida_form(){
				var f = document.forms[0];
				if((f.nome.value != "") && (f.amigo.value != "") && (f.email.value != "")){
					return true;
				}
				else {
					alert("Preencha todos os campos!");
					return false;
				}
			}
		</script>
	</head>
	<body onLoad="document.forms[0].elements[0].focus();">
		<table width="100%" background="http://www.ldi.com.br/estrutura/fundo_item_02.gif" style="background-repeat:no-repeat;">
			<form method="post" onSubmit="return valida_form();">
			<tr>
				<td width="30%"><font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Seu Nome:</font></td>
				<td><input type="text" name="nome" size="20"></td>
			</tr>
			<tr>
				<td><font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Nome do amigo:</font></td>
				<td><input type="text" name="amigo" size="20"></td>
			</tr>
			<tr>
				<td><font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Email do amigo:</font></td>
				<td><input type="text" name="email" size="20"></td>
			</tr>
			<tr>
				<td colspan="2" align="left"><input type="submit" value="Enviar"><br><br></td>
			</tr>
			<input type="hidden" name="produto" value="<?=$_GET['cd']?>">
			<input type="hidden" name="enviar" value="sim">
			</form>
		</table>
	</body>
</html>
	<?
}

function enviado_ok(){
	?>
<html>
	<head>
		<title>Recomendar</title>
		<link href="includes/estilo.css" rel="stylesheet">
	</head>
	<body>
		<table width="100%" style="background-repeat:no-repeat;">
			<form method="post">
			<tr>
				<td align="center">
					<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">
						Email enviado com sucesso!<br><br><br><a href="javascript: self.close();">[Fechar]</a>
					</font>
				</td>
			</tr>
		</table>
	</body>
</html>
	<?
}
?>