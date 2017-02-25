<?php
error_reporting  (E_ERROR | E_WARNING | E_PARSE);
require("funcoes.php");
?>
<html>
	<head>
		<title>Administração Site LDI</title>
		<link href="estilo.css" rel="stylesheet">
	</head>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="../estrutura/fundo_02.jpg" onLoad="document.forms[0].elements[0].focus();">
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td width="190" height="105">&nbsp;</td>
				<td>&nbsp;</td>
				<td width="150">&nbsp;</td>
			</tr>
			<tr>
				<td rowspan="2">
					<table width="100%" border="0">
						<tr>
							<td height="50">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
					</table>
				</td>
				<td>
				<BR><BR><BR><BR>
				<center>
				<span class="celula"><B>ADMINISTRAÇÃO DE CONTEÚDO</B></span><br><br>
				<table width="35%" border="0">
				<form name="login" action="valida_usuario.php" method="post">
				<tr>
				<td width="20%" style="text-align: right; font:Arial, Helvetica, sans-serif; font-size:12px;">Senha:</td>
				<td width="60%"><input type="password" name="senha" style="width: 100%;" maxlength="255"></td>
				<td width="10%"><input type="submit" value="OK"></td>
				</tr>
				</form>
				</table>
				<? if($_GET["status"] == "erro") echo('<div style="color: #FF0000">Senha Errada!</div>'); ?>
				</center>
				</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</table>
	</body>
</html>
