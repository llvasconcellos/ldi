<?
require("permissao_documento.php");
$html_ok = '<html><head><meta http-equiv="Refresh" content="3;url=browser_contatos.php"><link href="../includes/estilo.css" rel="stylesheet"></head><body><p>Dados Gravados com Sucesso!</p></body></html>';

$categoria = $_POST["categoria"];
$nome = $_POST["nome"];
$email = $_POST["email"];
$telefone = $_POST["telefone"];
$celular = $_POST["celular"];
$ramal = $_POST["ramal"];
$texto = $_POST["texto"];
$modo = $_POST["modo"];
$cd = $_POST["cd"];
require("../includes/conectar_mysql.php");

if($modo == "add"){
	$query = "INSERT INTO contatos (categoria, nome, email, telefone, celular, ramal, texto) VALUES ";
	$query .= "('" . $categoria ."',";
	$query .= "'" . $nome ."',";
	$query .= "'" . $email ."',";
	$query .= "'" . $telefone ."',";
	$query .= "'" . $celular ."',";
	$query .= "'" . $ramal ."',";
	$query .= "'" . $texto ."')";
}
if($modo == "update"){
	$query = "UPDATE contatos SET ";
	$query .= "categoria='" . $categoria . "', ";
	$query .= "nome='" . $nome . "', ";
	$query .= "email='" . $email . "', ";
	$query .= "telefone='" . $telefone . "', ";
	$query .= "celular='" . $celular . "', ";
	$query .= "ramal='" . $ramal . "', ";
	$query .= "texto='" . $texto . "'";
	$query .= " WHERE cd='" . $cd . "'";
}

$result = mysql_query($query) or die("Erro ao atualizar registros no Banco de dados: " . mysql_error());
if($result) echo($html_ok);

require("../includes/desconectar_mysql.php")
?>