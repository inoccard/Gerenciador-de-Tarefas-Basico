<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Gerenciador de Tarefas</title>
	<link rel="stylesheet" href="../css/css.css" type="text/css">
</head>
<body>
	<form method="POST">
		<input type="hidden" name="idtarefas" value="<?php echo $tarefa['idtarefas']; ?>">
		<fieldset>
			<legend>Nova tarefa</legend>
			<label>
				Tarefa:
				<?php if ($tem_erros && isset($erros_validacao['nome'])) : ?>
					<span class="erro">
						<?php echo $erros_validacao['nome']; ?>
					</span>
				<?php endif; ?>
				<br> <input type="text" name="nome" value="<?php echo $tarefa['nome']; ?>" />
			</label>
			<label>
				Descrição (Opcional):<br> <textarea name="descricao"><?php echo $tarefa['descricao']; ?></textarea>
			</label>
			<label>
				Prazo (Opcional):
				<?php if ($tem_erros && isset($erros_validacao['prazo'])) : ?>
					<span class="erro">
						<?php echo $erros_validacao['prazo']; ?>
					</span>
				<?php endif; ?>
				<br> <input type="text" name="prazo" value="<?php echo traduz_data_para_exibir($tarefa['prazo']); ?>">
			</label>
			<fieldset>
				<legend>Prioridade:</legend>
				<label>
					<input type="radio" name="prioridade" value="1" <?php echo ($tarefa['prioridade'] == 1) ? 'checked': '';?> />Baixa
					<input type="radio" name="prioridade" value="2" <?php echo ($tarefa['prioridade'] == 2) ? 'checked': '';?> />Media
					<input type="radio" name="prioridade" value="3" <?php echo ($tarefa['prioridade'] == 3) ? 'checked': '';?> />Alta
				</label>
			</fieldset>
			<label> Tarefa Concluída:<input type="checkbox" name="concluida" value="1"<?php echo ($tarefa['concluida'] == 1)? 'checked': '';?> /> </label>
			<label> Lembrete por e-mail: 
				<input type="checkbox" name="lembrete" value="1" />
			</label>
			<input type="submit" value="<?php echo ($tarefa['idtarefas'] > 0) ? 'Atualizar': 'Cadastrar';?>" />
		</fieldset>
	</form>
</body>
</html>