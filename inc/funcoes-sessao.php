<?php

// sessoes no php. Recurso usado para controle de acesso à determinadas páginas e/ou recursos do site.
// Exemplos : area admin, painel de controle, perfil de usuario
// nestas areas o acesso só é possivel mediante alguma forma de autenticação : login, senha,digital, facil.


// verificação se não há uma sessão em funcionamento

if (!isset($_SESSION)) {
    // então,inicie uma sessão
    session_start();
}

function verificaAcesso()
{
    // se não existir uma variavel de sessão chamada "id" (baseada nos ids usuarios do banco), então significa que o usuario não esta logado.

    if (!isset($_SESSION['id'])) {
        //portanto, destuimos a sessão
        session_destroy();
        // fazemos o usuario voltar para a página login.
        header("location: ../login.php");
        exit; //or die();
    }
}
