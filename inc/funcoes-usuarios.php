<?php
// acesso aos dados da conexão do servidor
require "conecta.php";

function inserirUsuario($conexao, $nome, $email, $tipo, $senha ){
    // montando o comando SQL em uma variavel
    $sql = "INSERT INTO usuarios (nome, email, tipo, senha) VALUES ('$nome', '$email', '$tipo','$senha')";

}