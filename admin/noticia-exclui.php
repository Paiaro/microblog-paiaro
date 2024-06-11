<?php
require_once "../inc/funcoes-noticias.php";
require_once "../inc/funcoes-sessao.php";

verificaAcesso();

if (isset($_GET['id']) && !empty($_GET['id'])) {
    excluirNoticia($conexao,$ $_GET['id']);
    header("Location: noticias.php");
}
