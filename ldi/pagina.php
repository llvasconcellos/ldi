<?
require("includes/funcoes_layout.php");
inicio_pagina(); ?>
<div style="width:570px; margin-top: 20px; margin-left: 15px; font-family:Arial, Helvetica, sans-serif;">
	<a href="javascript:window.history.back()"><img border="0" src="estrutura/seta.gif" align="middle">&nbsp;&nbsp;volta</a>
</div><br>
<div style="width:570px; height:420px; margin-left: 15px; overflow:auto;font-family:Arial, Helvetica, sans-serif;">
<? mostra_texto($_GET["pagina"]); ?>
</div>
<? final_pagina(); ?>