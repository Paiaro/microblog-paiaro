<?php
require_once "../inc/funcoes-noticias.php";
require_once "../inc/funcoes-sessao.php";

verificaAcesso();

if (isset($_GET['id']) && !empty($_GET['id'])) {
    $idNoticia = $_GET['id'];
    $idUsuario = $_SESSION['usuario_id'];
    $tipoUsuario = $_SESSION['tipo'];

    // verificando se o usuario é adminn
    if ($tipoUsuario == 'admin') {
        excluirNoticia($conexao, $idNoticia, $idUsuario);
        header("Location: noticias.php");
    } else {
        // se não, não pode fazer esta ação
        header("location: nao-autorizado.php");
    }
}
?>
