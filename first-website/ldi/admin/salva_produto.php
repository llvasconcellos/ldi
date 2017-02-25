<?
//error_reporting(E_ALL);
require("permissao_documento.php");
require("../includes/conectar_mysql.php");
$html_ok = '<html><head><meta http-equiv="Refresh" content="3;url=browser_produtos.php"><link href="../includes/estilo.css" rel="stylesheet"></head><body><p>Dados Gravados com Sucesso!</p></body></html>';
$html_erro_1 = '<html><head><meta http-equiv="Refresh" content="3;url=form_produto.php"><link href="../includes/estilo.css" rel="stylesheet"></head><body><p>Produto já Cadastrado!</p></body></html>';

$modo = $_REQUEST["modo"];
$cd = $_REQUEST["cd"];
$familia = $_POST["familia"];
$codigo = $_POST["codigo"];
$produto = $_POST["produto"];
$preco = $_POST["preco"];
$preco_promocao = $_POST["preco_promocao"];
$imposto = $_POST["imposto"];
$prazo = $_POST["prazo"];
$descricao = $_POST["descricao"];
$peso = $_POST["peso"];
$ordem = $_POST["ordem"];
$tipo_imposto = $_POST["tipo_imposto"];


if($modo == "apaga_pdf"){
	$query = "SELECT pdf FROM produtos WHERE cd='" . $cd . "'";
	$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
	$pdf = mysql_fetch_assoc($result);
	if(strlen($pdf["pdf"]) > 0){
		if(unlink("../" . $pdf["pdf"])){
			$query = "UPDATE produtos SET pdf='', tamanho_pdf='' WHERE cd='" . $cd . "'";
			$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
			die(header("Location: form_produto.php?cd=" . $cd));
		}
		else die("Erro ao apagar o arquivo pdf.");
	}
}



include("funcoes_strings.php");
if(!empty($_FILES["image"]["name"])){
	if($modo == "update"){
		unlink("../imagens/" . $codigo . ".jpg");
		unlink("../imagens/thumb/thumb_" . $codigo . ".jpg");
	}
	include("img_uploader.php");
	$pasta = "../imagens";
	$arquivo = $_FILES["image"];
	$nome_arquivo = $codigo . ".jpg";
	$info_imagem = upload_imagem($pasta, $arquivo, $nome_arquivo, 640, 480, 100, 75, true);
	$imagem = $info_imagem[0];
	$imagem_thumb = $info_imagem[1];
	$tamanho_imagem = $info_imagem[2];
	$largura_imagem = $info_imagem[3];
	$altura_imagem = $info_imagem[4];
}

if(!empty($_FILES["pdf"]["name"])){
	if($modo == "update"){
		unlink("../pdf/" . $codigo . ".pdf");
	}
	include("file_uploader.php");
	$pasta = "../pdf";
	$arquivo = $_FILES["pdf"];
	$nome = $codigo . ".pdf";
	$info_arquivo = file_upload($pasta, $arquivo, $nome);
	$pdf = $info_arquivo[0];
	$tamanho_pdf = $info_arquivo[1];
}


if($modo == "add"){
	$query = "SELECT codigo FROM produtos WHERE codigo='" . $codigo . "'";
	$result = mysql_query($query) or die("Erro de conexão ao banco de dados: " . mysql_error());
	if(mysql_num_rows($result)>0) die($html_erro_1);
	else{
		$query = "INSERT INTO produtos (familia, codigo, produto, preco, preco_promocao, imposto, prazo, imagem, imagem_thumb, largura_imagem, altura_imagem, tamanho_imagem, pdf, tamanho_pdf, descricao, peso, ordem, tipo_imposto) VALUES ";
		$query .= "('" . $familia ."',";
		$query .= "'" . $codigo ."',";
		$query .= "'" . $produto ."',";
		$query .= "'" . $preco ."',";
		$query .= "'" . $preco_promocao ."',";
		$query .= "'" . $imposto ."',";
		$query .= "'" . $prazo ."',";
		$query .= "'" . $imagem ."',";
		$query .= "'" . $imagem_thumb ."',";
		$query .= "'" . $largura_imagem ."',";
		$query .= "'" . $altura_imagem ."',";
		$query .= "'" . $tamanho_imagem ."',";
		$query .= "'" . $pdf ."',";
		$query .= "'" . $tamanho_pdf ."',";
		$query .= "'" . $descricao ."',";
		$query .= "'" . $peso ."',";
		$query .= "'" . $ordem ."',";
		$query .= "'" . $tipo_imposto ."')";
	}
}
if($modo == "update"){
	$query = "UPDATE produtos SET ";
	$query .= "familia='" . $familia . "', ";
	$query .= "codigo='" . $codigo . "', ";
	$query .= "produto='" . $produto . "', ";
	$query .= "preco='" . $preco . "', ";
	$query .= "preco_promocao='" . $preco_promocao . "', ";
	$query .= "imposto='" . $imposto . "', ";
	$query .= "prazo='" . $prazo . "', ";
	if(!empty($_FILES["image"]["name"])){
		$query .= "imagem='" . $imagem . "', ";
		$query .= "imagem_thumb='" . $imagem_thumb . "', ";
		$query .= "largura_imagem='" . $largura_imagem . "', ";
		$query .= "altura_imagem='" . $altura_imagem . "', ";
		$query .= "tamanho_imagem='" . $tamanho_imagem . "', ";
	}
	if(!empty($_FILES["pdf"]["name"])){
		$query .= "pdf='" . $pdf . "', ";
		$query .= "tamanho_pdf='" . $tamanho_pdf . "', ";
	}
	$query .= "descricao='" . $descricao . "',";
	$query .= "peso='" . $peso . "',";
	$query .= "ordem='" . $ordem . "',";
	$query .= "tipo_imposto='" . $tipo_imposto . "'";
	$query .= " WHERE cd='" . $cd . "'";
}
$result = mysql_query($query) or die("Erro ao atualizar registros no Banco de dados: " . mysql_error());


$flag = 0;
while($flag == 0){
	$query = "SELECT cd, ordem FROM produtos WHERE ordem=" . $ordem . " AND cd<>" . $cd . " AND familia=" . $familia;
	$result = mysql_query($query);
	if(mysql_num_rows($result)>0){
		while($registro = mysql_fetch_assoc($result)){
			$ordem = (int)$ordem + 1;
			$cd = $registro["cd"];
			$query2 = "UPDATE produtos SET ordem=" . $ordem . " WHERE cd=" . $cd;
			$result2 = mysql_query($query2);
		}
	}
	else $flag = 1;
}

if($result) echo($html_ok);

require("../includes/desconectar_mysql.php")
?>