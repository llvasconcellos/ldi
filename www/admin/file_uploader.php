<?php 
function file_upload($dir_arquivo, $arquivo, $nome){
	if (strlen($nome) == 0)	$nome_da_imagem = verifica_nome_arquivo($arquivo["name"]);
	else $nome_da_imagem = verifica_nome_arquivo($nome);
	$nome = $nome_da_imagem;
	
	if (move_uploaded_file($arquivo['tmp_name'], $dir_arquivo . "/" . $nome)) {
		print "O arquivo é valido e foi carregado com sucesso.\n";
	} 
	else {
		die("Erro ao enviar arquivo!\n");
	}
	$resultado = str_replace( "../", "",$dir_arquivo . "/" . $nome);
	return array($resultado, sizeformater($arquivo['size']));
}
?>