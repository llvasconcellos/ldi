<?
require("includes/funcoes_layout.php");
inicio_pagina(); ?>
<div style="width:570px; margin-top: 20px; margin-left: 15px; font-family:Arial, Helvetica, sans-serif;">
	<a href="javascript:window.history.back()"><img border="0" src="estrutura/seta.gif" align="middle">&nbsp;&nbsp;volta</a>
</div><br>
<div style="width:570px; height:420px; margin-left: 15px; overflow:auto; font-family:Arial, Helvetica, sans-serif; text-align:center;">
	<br><br><br>
	<?
	if(empty($_POST["envia"])) formulario();
	else envia();
	?>
</div>
<? final_pagina(); 

function formulario(){
	?>
	<div style="width:340px;"><font face="Arial, Helvetica, sans-serif" size="2" color="#999999">
					Informe o seu endereço eletrônico que será enviada uma mensagem com sua conta e senha.
				</font></div><br>
	<table width="188" border="0" cellspacing="0" cellpadding="0" background="estrutura/fundo_log_in.gif" height="75" style="background-repeat: no-repeat;">
		<form method="post">
		<tr> 
			<td align="right" valign="middle">
				<font size="2" face="Arial, Helvetica, sans-serif" color="#999999">
					Email:&nbsp;&nbsp;<input type="text" name="email" size="11">
				</font>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr> 
			<td valign="top" align="right">
				<font size="2" face="Arial, Helvetica, sans-serif" color="#999999">
					<input type="submit" value="OK">
				</font>
			</td>
			<td>&nbsp;</td>
		</tr>
		<input type="hidden" name="envia" value="sim">
		</form>
	</table>
	<?
}

##########################################################################################################

function envia(){
	require("includes/conectar_mysql.php");
	$query = "SELECT nome, email, senha FROM clientes WHERE email = '" . $_POST["email"] . "'";
	$result = mysql_query($query) or die($query . "Erro de conexão ao banco de dados: " . mysql_error());
	if(mysql_num_rows($result) == 0) $mensagem = "Endereço de email não cadastrado no sistema.";
	else {
		$registro = mysql_fetch_assoc($result);
		$to  = trim($registro["email"]);
		$subject = "Senha de acesso ao sistema LDI.COM.BR";
				
		$headers .= "To: " . $registro["nome"] . " <" . $registro["email"] . ">\r\n";
		$headers .= "From: LDI <ldi@ldi.com.br>\r\n";
		
		$mensagem = "Seu login e senha para acesso são os seguintes:\r\n\r\nLogin: " . $registro["email"] . "\n\rSenha: " . $registro["senha"];
		$mensagem .= "\r\n\r\nhttp://www.ldi.com.br";
		
		if(mail($to, $subject, $mensagem, $headers)) $mensagem = "Seu Login e Senha foram enviados para o endereço de email informado.";
		else $mensagem = "Problemas no envio do email. Tente novamente mais tarde.";
	}
	require("includes/desconectar_mysql.php");
	?>
	<div style="width:340px;"><font face="Arial, Helvetica, sans-serif" size="2" color="#999999">
					<?=$mensagem?>
				</font></div><br>
	<?
}

?>