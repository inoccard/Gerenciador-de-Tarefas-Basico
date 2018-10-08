<?php
include "config.php";
include "banco.php";
remover_tarefa($conexao, $_POST['idtarefas']);
header('Location: tarefasWithBd.php');
