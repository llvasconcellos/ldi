<html>
	<head>
		<script language="javascript">
			function valida_form(){
				var f = document.forms[0];
				if((f.complemento.value != "") && (f.complemento_cob.value != "")){
					return true;
				}
				else{
					alert("Preencha o complemento.");
					return false;
				}
			}
			function endereco_igual(){
				var f = document.forms[0];
				f.endereco_cob.value = f.endereco.value;
				f.complemento_cob.value = f.complemento.value;
				f.bairro_cob.value = f.bairro.value;
				f.cidade_cob.value = f.cidade.value;
				f.estado_cob.value = f.estado.value;
				f.cep_cob.value = f.cep.value;
			}
		</script>
	</head>
	<body>
	<form method="post" action="cadastro_passo4.php" onSubmit="return valida_form();">
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
							<table width="441" border="0" cellspacing="0" cellpadding="0" height="235" background="http://www.ldi.com.br/estrutura/repre_corpo_fundo.jpg">
								<tr valign="middle" align="left">
									<td valign="top" height="29">&nbsp;</td>
									<td valign="top" height="29">&nbsp;</td>
									<td valign="middle" height="29">
										<font face="Arial, Helvetica, sans-serif" size="2">Endere&ccedil;o</font>
									</td>
								</tr>
								<tr valign="middle">
									<td width="110" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Endere&ccedil;o</font>
									</td>
									<td width="10" align="left">&nbsp;</td>
									<td width="333"><input type="text" name="endereco" size="50" maxlength="255" value="<?=$_POST["endereco"]?>"></td>
								</tr>
								<tr valign="middle">
									<td width="110" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Complemento</font>
									</td>
									<td width="10" align="left">&nbsp;</td>
									<td width="333"><input type="text" name="complemento" size="50" maxlength="50"></td>
								</tr>
								<tr valign="middle">
									<td width="110" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Bairro</font>
									</td>
									<td width="10" align="left">&nbsp;</td>
									<td width="333"><input type="text" name="bairro" size="50" maxlength="50" value="<?=$_POST["bairro"]?>"></td>
								</tr>
								<tr valign="middle">
									<td width="110" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Cidade</font>
									</td>
									<td width="10" align="left">&nbsp;</td>
									<td width="333"><input type="text" name="cidade" maxlength="100" size="50" value="<?=$_POST["cidade"]?>"></td>
								</tr>
								<tr valign="middle">
									<td width="110" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Estado</font>
									</td>
									<td width="10" align="left">&nbsp;</td>
									<td width="333" valign="bottom"><input type="text" name="estado" maxlength="2" size="50" value="<?=$_POST["estado"]?>"></td>
								</tr>
								<tr valign="middle">
								<td width="110" align="right" height="27">
									<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Cep</font>
								</td>
								<td width="10" align="left" height="27">&nbsp;</td>
								<td width="333" height="27"><input type="text" name="cep" size="50" maxlength="8" value="<?=$_POST["cep"]?>"></td>
							</tr>
							<tr valign="middle" align="left">
								<td colspan="3"><img src="http://www.ldi.com.br/estrutura/repre_barra_rodape.jpg" width="450" height="1"></td>
							</tr>
							<tr valign="middle">
								<td width="110" align="right">&nbsp;</td>
								<td width="10" align="left">&nbsp;</td>
								<td width="333" height="14" valign="bottom">
									<font size="2" face="Arial, Helvetica, sans-serif">Endere&ccedil;o de Cobrança</font>
								</td>
							</tr>
							<tr valign="middle" align="center">
								<td align="right"><input type="checkbox" onClick="endereco_igual();"></td>
								<td>&nbsp;</td>
								<td align="left">
									<font size="1" face="Arial, Helvetica, sans-serif">
										caso o endere&ccedil;o para entrega seja o mesmo que o da cobran&ccedil;a, assinale aqui.
									</font>
								</td>
							</tr>
							<tr valign="middle">
								<td width="110" align="right">
									<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Endere&ccedil;o</font>
								</td>
								<td width="10" align="left">&nbsp;</td>
								<td width="333"><input type="text" name="endereco_cob" size="50" maxlength="255"></td>
							</tr>
							<tr valign="middle">
									<td width="110" align="right">
										<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Complemento</font>
									</td>
									<td width="10" align="left">&nbsp;</td>
									<td width="333"><input type="text" name="complemento_cob" size="50" maxlength="50"></td>
								</tr>
							<tr valign="middle">
								<td width="110" align="right">
									<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Bairro.</font>
								</td>
								<td width="10" align="left">&nbsp;</td>
								<td width="333"><input type="text" name="bairro_cob" size="50" maxlength="50"></td>
							</tr>
							<tr valign="middle">
								<td width="110" height="1" align="right">
									<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Cidade</font>
								</td>
								<td width="10" height="1" align="left">&nbsp;</td>
								<td width="333" height="1"><input type="text" name="cidade_cob" size="50" maxlength="100"></td>
							</tr>
							<tr valign="middle">
								<td width="110" height="1" align="right">
									<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">Estado</font>
								</td>
								<td width="10" height="1" align="left">&nbsp;</td>
								<td width="333" height="1"><input type="text" name="estado_cob" size="50" maxlength="2"></td>
							</tr>
							<tr valign="middle">
								<td width="110" height="1" align="right">
									<font face="Arial, Helvetica, sans-serif" size="2" color="#999999">CEP</font>
								</td>
								<td width="10" height="1" align="left">&nbsp;</td>
								<td width="333" height="1"><input type="text" name="cep_cob" size="50" maxlength="8"></td>
							</tr>
							<tr valign="middle">
								<td width="110" height="1" align="right">&nbsp;</td>
								<td width="10" height="1" align="left">&nbsp;</td>
								<td width="333" height="1">&nbsp;</td>
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
									<input type="image" src="http://www.ldi.com.br/estrutura/botao_avancar.gif">
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
	<input type="hidden" name="nome" value="<?=$_POST["nome"]?>">
	<input type="hidden" name="telefone" value="<?=$_POST["telefone"]?>">
	<input type="hidden" name="fax" value="<?=$_POST["fax"]?>">
	<input type="hidden" name="email" value="<?=$_POST["email"]?>">
	<input type="hidden" name="razao_social" value="<?=$_POST["razao_social"]?>">
	<input type="hidden" name="nome_fantasia" value="<?=$_POST["nome_fantasia"]?>">
	<input type="hidden" name="cpf_cnpj" value="<?=$_POST["cpf_cnpj"]?>">
	<input type="hidden" name="ie_rg" value="<?=$_POST["ie_rg"]?>">
	<input type="hidden" name="senha" value="<?=$_POST["senha"]?>">
	<input type="hidden" name="obs" value="<?=urlencode($_POST["obs"])?>">
</form>
</body>
</html>