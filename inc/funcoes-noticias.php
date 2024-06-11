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

function inserirNoticias($conexao, $titulo, $texto, $resumo, $nomeImagem, $usuarioId)
{
    $sql = "INSERT INTO noticias(titulo, texto,resumo,imagem,usuario_id) VALUES ('$titulo','$texto','$resumo','$nomeImagem','$usuarioId')";

    mysqli_query($conexao, $sql) or die(mysqli_error($conexao));
}

function lerNoticias($conexao, $idUsuario, $tipoUsuario)
{

    if ($tipoUsuario == "admin") {
        # admin pode ver tudo

        $sql = "SELECT noticias.id,noticias.titulo,noticias.data,usuarios.nome FROM noticias JOIN usuarios ON noticias.usuario_id = usuarios.id ORDER BY DATA DESC";
    } else {
        # Editor pode ver somente o DELE/DELA/DELU
        $sql = "SELECT titulo, data, id FROM noticias WHERE usuario_id = $idUsuario ORDER BY data DESC";
    }

    $resultado = mysqli_query($conexao, $sql) or die(mysqli_error($conexao));

    return mysqli_fetch_all($resultado, MYSQLI_ASSOC);
}

function lerUmaNoticia($conexao, $idNoticia, $idUsuario, $tipoUsuario)
{
    if ($tipoUsuario == 'admin') {
        // PODE CARREGAR E VER QUALQUER NOTICIA
        $sql = "SELECT * FROM noticias WHERE id = $idNoticia";
    } else {
        // PODE CARREGAR OU VER SOMENTE SUA PROPRIA NOTICIA
        $sql = "SELECT * FROM noticias WHERE id = $idNoticia AND usuario_id =$idUsuario";
    }
    $resultado = mysqli_query($conexao, $sql) or die(mysqli_error($conexao));
    // retornando um arrau com os dados da noticia escolhida
    return mysqli_fetch_assoc($resultado);
}

function atualizarNoticia($conexao, $titulo, $texto, $resumo, $imagem, $idNoticia, $idUsuario, $tipoUsuario)
{
    if ($tipoUsuario == 'admin') {

        $sql = "UPDATE noticias SET titulo = '$titulo', texto = '$texto', resumo = '$resumo', imagem = '$imagem' WHERE id = $idNoticia"; // CUIDADO "PRERIGO" 
        # PODE ATUALIZAR QUALQUER NOTICIA 
        } else {
            # PODE ATUALIZAR SOMENTE SUAS NOTICIAS
            $sql = "UPDATE noticias SET titulo = '$titulo', texto = '$texto', resumo = '$resumo', imagem = '$imagem' WHERE id = $idNoticia AND usuarui_id = $idUsuario"; // CUIDADO "PRERIGO"
    }
    mysqli_query($conexao, $sql) or die(mysqli_error($conexao));
}
function excluirNoticia($conexao)
{
}

function formataData($data)
{

    return date("d/m/Y H:i", strtotime($data));
}
