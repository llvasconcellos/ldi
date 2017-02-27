<?
require("permissao_documento.php");
$html_ok = '<html><head><meta http-equiv="Refresh" content="3;url=browser_links.php"><link href="../includes/estilo.css" rel="stylesheet"></head><body><p>Dados Gravados com Sucesso!</p></body></html>';
$nome = $_POST["nome"];
$link = $_POST["link"];
$tipo = $_POST["tipo"];
$ordem = $_POST["ordem"];
$cd = $_POST["cd"];
$modo = $_POST["modo"];

require("../includes/conectar_mysql.php");

if($modo == "add") $query = "INSERT INTO links (nome, link, tipo, ordem) VALUES ('" . $nome . "','" . $link . "'," . $tipo . "," . $ordem . ")";
if($modo == "update") $query = "UPDATE links SET nome='" . $nome . "', link='" . $link . "', tipo=" . $tipo . ", ordem=" . $ordem . " WHERE cd='" . $cd . "'";

$result_ok = mysql_query($query) or die("Erro ao atualizar registros no Banco de dados: " . mysql_error());

if (($result_ok) && ($modo == "add")) {
	$result = mysql_query("SELECT LAST_INSERT_ID();") or die("Erro ao atualizar registros no Banco de dados: " . $query . mysql_error());
	$registro = mysql_fetch_row($result);
	$cd = $registro[0];
}

$flag = 0;
while($flag == 0){
	$query = "SELECT cd, ordem FROM links WHERE ordem=" . $ordem . " AND cd<>" . $cd;
	$result = mysql_query($query);
	if(mysql_num_rows($result)>0){
		while($registro = mysql_fetch_assoc($result)){
			$ordem = (int)$ordem + 1;
			$cd = $registro["cd"];
			$query2 = "UPDATE links SET ordem=" . $ordem . " WHERE cd=" . $cd;
			$result2 = mysql_query($query2);
		}
	}
	else $flag = 1;
}

if($result_ok) echo($html_ok);

require("../includes/desconectar_mysql.php")
?>