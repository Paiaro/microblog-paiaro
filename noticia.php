<?php
require "inc/cabecalho.php";
require_once "inc/funcoes-noticias.php";

if (isset($_GET['id'])) {
    $idNoticia = $_GET['id'];
    $noticia = lerNoticiaCompleta($conexao, $idNoticia);
    if ($noticia) {
?>
        <div class="row my-1 mx-md-n1">
            <article class="col-12">
                <h2><?= $noticia['titulo'] ?></h2>
                <p class="font-weight-light">
                    <time><?= formataData($noticia['data']) ?></time> - <span><?= $noticia['nomeAutor'] ?></span>
                </p>
                <img src="imagens/<?= $noticia['imagem'] ?>" alt="" class="float-start pe-2 img-fluid">
                <p class="ajusta-texto"><?= $noticia['texto'] ?></p>
            </article>
        </div>
<?php
    }
}

require_once "inc/rodape.php";
?>