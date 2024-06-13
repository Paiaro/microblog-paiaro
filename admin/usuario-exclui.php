<?php
require_once "../inc/funcoes-usuarios.php";
require_once "../inc/funcoes-sessao.php";
verificaAcesso();
verificaNivel();

if (isset($_GET['id']) && !empty((int)$_GET['id'])) {
    excluirUsuario($conexao, (int)$_GET['id']);
    header("Location: usuarios.php");
}
