<?
require("permissao_documento.php");
$html_ok = '<html><head><meta http-equiv="Refresh" content="3;url=browser_contato_categoria.php"><link href="../includes/estilo.css" rel="stylesheet"></head><body><p>Dados Gravados com Sucesso!</p></body></html>';
$html_erro_1 = '<html><head><meta http-equiv="Refresh" content="3;url=form_contato_categoria.php"><link href="../includes/estilo.css" rel="stylesheet"></head><body><p>Categoria já Cadastrada!</p></body></html>';
$categoria = $_POST["categoria"];
$ordem = $_POST["ordem"];
$modo = $_POST["modo"];
$cd = $_POST["cd"];

require("../includes/conectar_mysql.php");

if($modo == "add"){
	$query = "SELECT categoria FROM contato_categoria WHERE categoria='" . $categoria . "'";
	$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
	if(mysql_num_rows($result)>0) die($html_erro_1);
	else	$query = "INSERT INTO contato_categoria (categoria, ordem) VALUES ('" . $categoria ."'," . $ordem . ")";
}
if($modo == "update") $query = "UPDATE contato_categoria SET categoria='" . $categoria . "', ordem=" . $ordem . " WHERE cd='" . $cd . "'";

$result_ok = mysql_query($query) or die("Erro ao atualizar registros no Banco de dados: " . mysql_error());

if (($result_ok) && ($modo == "add")) {
	$result = mysql_query("SELECT LAST_INSERT_ID();") or die("Erro ao atualizar registros no Banco de dados: " . $query . mysql_error());
	$registro = mysql_fetch_row($result);
	$cd = $registro[0];
}

$flag = 0;
while($flag == 0){
	$query = "SELECT cd, ordem FROM contato_categoria WHERE ordem=" . $ordem . " AND cd<>" . $cd;
	$result = mysql_query($query);
	if(mysql_num_rows($result)>0){
		while($registro = mysql_fetch_assoc($result)){
			$ordem = (int)$ordem + 1;
			$cd = $registro["cd"];
			$query2 = "UPDATE contato_categoria SET ordem=" . $ordem . " WHERE cd=" . $cd;
			$result2 = mysql_query($query2);
		}
	}
	else $flag = 1;
}


if($result_ok) echo($html_ok);

require("../includes/desconectar_mysql.php")
?>