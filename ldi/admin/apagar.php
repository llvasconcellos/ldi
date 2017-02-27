<?php
require("permissao_documento.php");
$origem = $_GET["origem"];
$oque = $_GET["oque"];
$cd = $_GET["cd"];
require("../includes/conectar_mysql.php");

switch ($oque){
	case "produtos":
		$query = "SELECT imagem, imagem_thumb, pdf FROM produtos WHERE cd=" . $cd;
		$result = mysql_query($query) or die("Erro ao acessar registros do Banco de dados: " . mysql_error());;
		$arquivo = mysql_fetch_assoc($result);
		unlink("../" . $arquivo["imagem"]);
		unlink("../" . $arquivo["imagem_thumb"]);
		unlink("../" . $arquivo["pdf"]);
		break;
		
	case "familias":
		$query = "SELECT imagem, imagem_thumb, pdf FROM produtos WHERE familia=" . $cd;
		$result = mysql_query($query) or die("Erro ao acessar registros do Banco de dados: " . mysql_error());;
		while($arquivo = mysql_fetch_assoc($result)){
			unlink("../" . $arquivo["imagem"]);
			unlink("../" . $arquivo["imagem_thumb"]);
			unlink("../" . $arquivo["pdf"]);
		}
		$query = "DELETE FROM produtos WHERE familia=" . $cd;
		$result = mysql_query($query) or die("Erro ao acessar registros do Banco de dados: " . mysql_error());;
		break;
	
	case "imagens":
		$query = "SELECT caminho_img, caminho_thumb FROM imagens WHERE cd=" . $cd;
		$result = mysql_query($query) or die("Erro ao acessar registros do Banco de dados: " . mysql_error());;
		$arquivo = mysql_fetch_assoc($result);
		unlink("../" . $arquivo["caminho_img"]);
		unlink("../" . $arquivo["caminho_thumb"]);
		break;
		
	case "contato_categoria":
		$query = "DELETE FROM contatos WHERE categoria=" . $cd;
		$result = mysql_query($query) or die("Erro ao acessar registros do Banco de dados: " . mysql_error());;
		break;
}

$query = "DELETE FROM " . $oque . " WHERE (cd=" . $cd . ") LIMIT 1";
$result = mysql_query($query) or die("Erro ao remover registros do Banco de dados: " . mysql_error());	

require("../includes/desconectar_mysql.php");
if($oque == "imagens"){
	$html_ok = '<html><head><link href="../includes/estilo.css" rel="stylesheet"><script language="JavaScript" type="text/javascript">setTimeout("finaliza();",2000);function finaliza(){if (opener) opener.location = opener.location;self.close();}</script></head><body>Imagem excluida com sucesso!</body></html>';
}
else $html_ok = '<html><head><meta http-equiv="Refresh" content="3;url=' . $origem . '"><link href="../includes/estilo.css" rel="stylesheet"></head><body><p>Dados Excluidos com Sucesso!</p></body></html>';
die($html_ok);
?>