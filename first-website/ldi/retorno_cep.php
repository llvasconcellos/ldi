<?
if($erro_descricao != ""){
	die("$erro_descricao");
}
?>
<html>
	<script>
		location = 'http://www.ldi.com.br/cadastro_passo2.php?endereco=<?=$endereco?>&bairro=<?=$bairro?>&cidade=<?=$cidade?>&estado=<?=$estado?>&cep=<?=$cepDest?>';
	</script>
</html>