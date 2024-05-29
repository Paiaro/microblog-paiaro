<?php
// Script de conexão com o banco de dados


// parametros para conexão
$servidor = "localhost";
$usuario =  "root";
$senha = "";
$banco = "microblog_gabriel";


//função para conexão com o servidor de banco de dados.

$conexao = mysqli_connect($servidor, $usuario, $senha, $banco);

// definindo o charset da conexão para utf8

mysqli_set_charset($conexao, "utf8");

// fazendo teste de conexão

// if (!$conexao) {
//     // comando die "mata a aplicação" fazendo ela parar.
//     die("WASTED" .mysqli_connect_error());
// }else{
// echo "CONEXÃO BEM SUCEDIDA !";

// }
