<?php

require "conecta.php";

function upload($arquivo)
{
    // array para validação dos tipos permitidos
    $tiposValidos = ["image/png", "image/jpeg", "image/gif", "image/svg+xml"];

    if (!in_array($arquivo['type'], $tiposValidos)) {
        echo "<scrypt>
        alert('Formato invalido!');
        history.back();
        </scrypt>";
    }
    $nome = $arquivo['nome'];
    $temporario = $arquivo['tmp_name'];
    $destino = "../imagens/" . $nome;
    move_uploaded_file($temporario, $destino);
}

function inserirNoticias($conexão)
{
}

function lerNoticias($conexão)
{
}

function lerUmaNoticia($conexão)
{
}

function atualizarNoticia($conexão)
{
}
function excluirNoticia($conexão)
{
}
