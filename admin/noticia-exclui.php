<?php
require_once "../inc/funcoes-noticias.php";
require_once "../inc/funcoes-sessao.php";
 
 
verificaAcesso();
 
$idNoticia = (int)$_GET['id'];
$idUsuario = (int)$_SESSION['id'];
$tipoUsuario = (int)$_SESSION['tipo'];
 
excluirNoticia($conexao, $idNoticia, $idUsuario, $tipoUsuario);
 
header("location:noticias.php")
?>