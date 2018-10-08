<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
	<table>
		<tr>
			<th>Tarefa</th>
			<th>Descricao</th>
			<th>Prazo</th>
			<th>Prioridade</th>
			<th>Concluída</th>
			<th>Opções</th> <!-- A nova coluna Opções -->
		</tr>
		<?php foreach($lista_tarefas as $tarefa):?>
		<tr>
			<td>
				<a href="tarefa.php?idtarefas=<?php echo $tarefa['idtarefas']; ?> ">
					<?php echo $tarefa['nome']; ?> 
				</a>
			</td>
			<td><?php echo $tarefa['descricao']; ?> </td>
			<td><?php echo traduz_data_para_exibir($tarefa['prazo']); ?> </td>
			<td><?php echo traduz_prioridade($tarefa['prioridade']); ?></td>
			<td><?php echo traduz_concluida($tarefa['concluida']); ?></td>
			<td> <!-- O campo com os links para editar e remover -->
			<a href="editar.php?idtarefas=<?php echo$tarefa['idtarefas']; ?> ">Editar</a>
			<a href="remover.php?idtarefas=<?php echo $tarefa['idtarefas']; ?> ">Remover</a>
			</td>
		</tr>
		<?php endforeach; ?>
	</table>
</body>
</html>