<?php
if (isset($_GET['id']) && !empty($_GET['id'])) {
    require_once "conecta.php";
    excluirUsuario($conexao, $_GET['id']);
    header("Location: usuarios.php");
    exit();
}
