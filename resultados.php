<?php
require "inc/cabecalho.php"; 
require_once "inc/funcoes-noticias.php";

// capturando via URL GET o que foi digitado no campo de busca

$termoDigitado = $_GET['busca'];

// executando a função de busca no banco de dados

$dadosDaBusca = busca($conexao, $termoDigitado);
?>

<?php foreach($dadosDaBusca as $busca){?>
<div class="row bg-white rounded shadow my-1 py-4">
    <h2 class="col-12 fw-light">
        Você procurou por <span class="badge bg-dark"><?=$termoDigitado?></span> e
        obteve <span class="badge bg-info"><?=count($busca)?></span> resultados
    </h2>
    <div class="col-12 my-1">
        <article class="card">
            <div class="card-body">
                <h3 class="fs-4 card-title fw-light"><?=$busca['titulo']?></h3>
                <p class="card-text">
                    <time><?= formataData($busca["data"]) ?> </time><?=$busca['resumo']?>
                </p>
                
                <a href="noticia.php?id=<?= $busca["id"] ?>" class="btn btn-primary btn-sm">Continuar lendo</a>
            </div>
        </article>
    </div>
    <?php } ?>
   
</div>     

<?php 
require_once "inc/rodape.php";
?>

