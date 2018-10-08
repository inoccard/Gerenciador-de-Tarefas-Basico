<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Gerenciador de Tarefas</title>
	<link rel="stylesheet" href="../css/css.css" type="text/css">
</head>
<body background="./img/sunrise-3188875_960_720.jpg">
	<h1>Gerenciador de Tarefas</h1>
	<?php include('formulario.php') ?>
	<?php if ($exibir_tabela): ?>
		<?php include('tabela.php') ?>
	<?php endif; ?>
</body>
</html>