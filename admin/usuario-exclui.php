<?php
require_once "../inc/funcoes-usuarios.php";

verificaNivel();

if (isset($_GET['id']) && !empty($_GET['id'])) {
    excluirUsuario($conexao, $_GET['id']);
    header("Location: usuarios.php");
}
