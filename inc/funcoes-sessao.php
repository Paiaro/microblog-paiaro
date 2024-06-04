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

    if (!isset($_SESSION['id'])) {
        session_destroy();
        header("location: ../login.php");
        exit; //or die();
    }
}
