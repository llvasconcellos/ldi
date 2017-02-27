<html>
	<head>
		<script language="javascript">
			function valida_form(){
				var f = document.forms[0];
				if(f.senha.value != ""){
					if(f.senha.value != f.confirma_senha.value){
						alert('Senhas diferem!');
						return false;
					}
					else{
						if((f.nome.value != "") && (f.telefone.value != "") && (f.email.value != "") && (checkEmail(f.email.value)) && (f.razao_social.value != "") && (f.cpf_cnpj.value != "") && (f.ie_rg.value != "")){
							return true;
						}
						else{
							alert('Preencha os campos marcados com *!');
							return false;
						}
					}
				}
				else {
					alert('Informe a senha!');
					return false;
				}
			}
			function checkEmail(email) {
				if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)){
					return (true)
				}
				alert("Email incorreto.")
				return (false)
			}
		</script>
	</head>
	<body>
	<form method="post" action="cadastro_passo3.php" onSubmit="return valida_form();">
	<table width="520" border="0" cellspacing="0" cellpadding="0" height="420">
		<tr> 
			<td width="70">&nbsp;</td>
			<td width="373" colspan="2">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" background="http://www.ldi.com.br/estrutura/repre_corpo_fundo.jpg">
					<tr> 
						<td colspan="2"><img src="http://www.ldi.com.br/estrutura/repre_barra_rodape.jpg" width="457" height="1"></td>
					</tr>
					<tr> 
						<td colspan="2"> 
							<table width="441" border="0" cellspacing="0" cellpadding="0" height="348" background="http://www.ldi.com.br/estrutura/repre_corpo_fundo.jpg">
								<tr valign="middle" align="left"> 
									<td valign="top" height="29" width="127">&nbsp;</td>
									<td valign="top" height="29" width="22">&nbsp;</td>
									<td valign="middle" height="29" width="308">
										<font face="Arial, Helvetica, sans-serif" size="2">Dados gerais</font>
									</td>
								</tr>
								<tr valign="middle">
									<td width="127" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Nome *</font>
									</td>
									<td width="22" align="left">&nbsp;</td>
									<td width="308"><input type="text" name="nome" size="50" maxlength="100"></td>
								</tr>
								<tr valign="middle">
									<td width="127" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Senha *</font>
									</td>
									<td width="22" align="left">&nbsp;</td>
									<td width="308"><input type="password" name="senha" size="50" maxlength="10"></td>
								</tr>
								<tr valign="middle">
									<td width="127" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Confirma Senha *</font>
									</td>
									<td width="22" align="left">&nbsp;</td>
									<td width="308"><input type="password" name="confirma_senha" size="50" maxlength="10"></td>
								</tr>
								<tr valign="middle">
									<td width="127" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Telefone *</font>
									</td>
									<td width="22" align="left">&nbsp;</td>
									<td width="308"><input type="text" name="telefone" size="50" maxlength="30"></td>
								</tr>
								<tr valign="middle">
									<td width="127" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Fax</font>
									</td>
									<td width="22" align="left">&nbsp;</td>
									<td width="308"><input type="text" name="fax" size="50" maxlength="30"></td>
								</tr>
								<tr valign="middle">
									<td width="127" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">E-mail *</font>
									</td>
									<td width="22" align="left">&nbsp;</td>
									<td width="308" valign="bottom"><input type="text" name="email" size="50" maxlength="50"></td>
								</tr>
								<tr valign="middle" align="left">
									<td colspan="3">
										<img src="http://www.ldi.com.br/estrutura/repre_barra_rodape.jpg" width="450" height="1">
									</td>
								</tr>
								<tr valign="middle">
									<td width="127" align="right">&nbsp;</td>
									<td width="22" align="left">&nbsp;</td>
									<td width="308" height="14" valign="bottom">
										<font size="2" face="Arial, Helvetica, sans-serif">Dados da empresa</font>
									</td>
								</tr>
								<tr valign="middle">
									<td width="127" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Raz&atilde;o Social *</font>
									</td>
									<td width="22" align="left">&nbsp;</td>
									<td width="308"><input type="text" name="razao_social" size="50" maxlength="100"></td>
								</tr>
								<tr valign="middle">
									<td width="127" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Nome Fantasia</font>
									</td>
									<td width="22" align="left">&nbsp;</td>
									<td width="308"><input type="text" name="nome_fantasia" size="50" maxlength="100"></td>
								</tr>
								<tr valign="middle">
									<td width="127" height="1" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">CNPJ ou CPF *</font>
									</td>
									<td width="22" height="1" align="left">&nbsp;</td>
									<td width="308" height="1"><input type="text" name="cpf_cnpj" size="50" maxlength="15"></td>
								</tr>
								<tr valign="middle">
									<td width="127" height="1" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">I.E. ou R.G *</font>
									</td>
									<td width="22" height="1" align="left">&nbsp;</td>
									<td width="308" height="1"><input type="text" name="ie_rg" size="50" maxlength="15"></td>
								</tr>
								<tr valign="top" align="center">
									<td height="1" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Observa&ccedil;&otilde;es e complementos</font>
									</td>
									<td height="1">&nbsp;</td>
									<td height="1" align="left"><textarea name="obs" cols="38"></textarea><br><br></td>
								</tr>
								<tr valign="bottom" align="left">
									<td colspan="3" height="1"><img src="http://www.ldi.com.br/estrutura/repre_barra_rodape.jpg" width="457" height="1"></td>
								</tr>
							</table>
							<table width="440" border="0" cellspacing="0" cellpadding="0" height="24">
								<tr>
									<td width="108" height="20"></td>
									<td width="166" height="20"></td>
									<td width="166" height="20" align="center">
										<input type="submit" value="avançar">
									</td>
								</tr>
								<tr>
									<td colspan="3"><img src="http://www.ldi.com.br/estrutura/repre_barra_rodape.jpg" width="457" height="1"></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<input type="hidden" name="endereco" value="<?=$_GET["endereco"]?>">
	<input type="hidden" name="bairro" value="<?=$_GET["bairro"]?>">
	<input type="hidden" name="cidade" value="<?=$_GET["cidade"]?>">
	<input type="hidden" name="estado" value="<?=$_GET["estado"]?>">
	<input type="hidden" name="cep" value="<?=$_GET["cep"]?>">
	</form>
	</body>
</html>