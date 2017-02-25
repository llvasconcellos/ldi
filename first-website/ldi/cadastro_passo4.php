<?
require("includes/conectar_mysql.php");

$query = "INSERT INTO clientes (nome, telefone, fax, email, razao_social, nome_fantasia, cpf_cnpj, ie_rg, obs, endereco, endereco_cob,	 bairro, bairro_cob, cidade, cidade_cob, estado, estado_cob, cep, cep_cob, senha) VALUES ";
$query .= "('" . $_POST["nome"] ."',";
$query .= "'" . $_POST["telefone"] ."',";
$query .= "'" . $_POST["fax"] ."',";
$query .= "'" . $_POST["email"] ."',";
$query .= "'" . $_POST["razao_social"] ."',";
$query .= "'" . $_POST["nome_fantasia"] ."',";
$query .= "'" . $_POST["cpf_cnpj"] ."',";
$query .= "'" . $_POST["ie_rg"] ."',";
$query .= "'" . $_POST["obs"] ."',";
$query .= "'" . $_POST["endereco"] . " " . $_POST["complemento"] ."',";
$query .= "'" . $_POST["endereco_cob"] . " " . $_POST["complemento_cob"] ."',";
$query .= "'" . $_POST["bairro"] ."',";
$query .= "'" . $_POST["bairro_cob"] ."',";
$query .= "'" . $_POST["cidade"] ."',";
$query .= "'" . $_POST["cidade_cob"] ."',";
$query .= "'" . $_POST["estado"] ."',";
$query .= "'" . $_POST["estado_cob"] ."',";
$query .= "'" . $_POST["cep"] ."',";
$query .= "'" . $_POST["cep_cob"] ."',";
$query .= "'" . $_POST["senha"] ."')";
	
$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
require("includes/conectar_mysql.php");
?>
<html>
	<body>
	<table width="520" border="0" cellspacing="0" cellpadding="0">
	 	  <tr> 
		<td width="70">&nbsp;</td>
		<td width="373" colspan="2">
		  <table width="357" border="0" cellspacing="0" cellpadding="0" height="177" background="http://www.ldi.com.br/estrutura/fundo_confirmacao.jpg">
			<tr height="85%"> 
			  <td width="54">&nbsp;</td>
			  <td width="303"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Voc&ecirc; efetuou a opera&ccedil;&atilde;o com sucesso!</font></td>
			</tr>
			<tr> 
			  <td>&nbsp;</td>
			  <td><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Efetue login clicando <a href="#" onClick="parent.location = 'login.php'"><b>aqui</b></a>.</font></td>
			</tr>
		  </table>
		</td>
	  </tr>
	</table>
	</body>
</html>