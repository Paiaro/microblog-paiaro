<?php

require "conecta.php";

function upload($arquivo)
{
    // array para validação dos tipos permitidos
    $tiposValidos = ["image/png", "image/jpeg", "image/gif", "image/svg+xml"];

    // verificando se o tipo do arquivo nao é um dos existentes no array tiposvalidos
    if (!in_array($arquivo['type'], $tiposValidos)) {
        echo "<scrypt>
        alert('Formato invalido!');
        history.back();
        </scrypt>";
        exit;
    }
    // pegando o nome do arquivo
    $nome = $arquivo['name'];

    // obtendo do servidor o local/nome temporario para o processo de upload
    $temporario = $arquivo['tmp_name'];

    // definicao da pasta de destino + nome do arquivo da imagem
    $destino = "../imagens/" . $nome;

    // movendo o arquivo da area temporaria para a pasta de destino indicada (imagens).
    move_uploaded_file($temporario, $destino);
}

function inserirNoticias($conexão, $titulo, $texto, $resumo, $nomeImagem, $usuarioId)
{
    $sql = "INSERT INTO noticias(titulo, texto,resumo,imagem,usuario_id) VALUES ('$titulo','$texto','$resumo','$nomeImagem','$usuarioId')";

    mysqli_query($conexão,$sql) or die(mysqli_error($conexão));
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
