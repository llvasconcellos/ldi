<?
require("includes/funcoes_layout.php");
inicio_pagina(); ?>
<div style="width:570px; margin-top: 20px; margin-left: 15px; font-family:Arial, Helvetica, sans-serif;">
	<a href="javascript:window.history.back()"><img border="0" src="estrutura/seta.gif" align="middle">&nbsp;&nbsp;volta</a>
	<img src="estrutura/titulo_cadastro.jpg" width="175" height="35" align="right">
</div><br>
<div style="width:570px; height:420px; margin-left: 15px; overflow:auto;font-family:Arial, Helvetica, sans-serif; text-align:center;">
	<br><br><br>
	<table width="340" border="0" cellspacing="0" cellpadding="0" background="estrutura/fundo_log_in.gif" height="75" style="background-repeat: no-repeat;">
		<tr> 
			<td width="53%" height="44" align="right" valign="middle">
				<font size="2" face="Arial, Helvetica, sans-serif" color="#999999">
					email:&nbsp;&nbsp;<input type="text" name="login" size="11">
				</font>
			</td>
			<td width="6%" rowspan="2">&nbsp;</td>
			<td width="42%" rowspan="1" align="left" valign="top">
				<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">
					Se voc&ecirc; ainda n&atilde;o est&aacute; cadastrado,
					<font color="#006600"><a href="cadastro.php">clique aqui.</a></font>
				</font>
			</td>
		</tr>
		<tr> 
			<td valign="top" align="right">
				<font size="2" face="Arial, Helvetica, sans-serif" color="#999999">
					senha:&nbsp;&nbsp;<input type="password" name="senha" size="11">
				</font>
			</td>
			<td>
				<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">
					Esqueceu a senha?
					<font color="#006600"><a href="lembra_senha.php">Clique aqui.</a></font>
				</font>
			</td>
		</tr>
	</table>
</div>
<? final_pagina(); ?>