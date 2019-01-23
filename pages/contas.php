<?php
$contateste = '5e619cc2-02ed-49dc-9f65-01b9046c88d2';

$titulo     = 'Minhas Contas';

include_once('../header.php');

echo("<div class=\"container\">\n");
echo("<h2>Minhas Contas</h2>\n");
echo("<div class=\"row w-100\">\n");

//idusuario = d2f98274-d69e-11e7-b2c2-0a002700000d
$contas = new lib\tables\conta();

for ($tipo = 0; $tipo < 4; $tipo++)
{
    echo("<div class=\"col-6\">\n");

    $contarr                    = $contas->ListarPorTipoComSaldoAtual($contateste, $tipo + 1);

    $tabela                     = new lib\ui\tabela();
    $linhas                     = array();

    /* Título da tabela */
    $linhatit                   = new lib\ui\linhatabela(true, true, true);
    $celulastit                 = array();

    $celulatit01                = new lib\ui\celulatabela(true);
    $celulatit01->valor         = 'Nome';
    array_push($celulastit, $celulatit01);

    $celulatit02                = new lib\ui\celulatabela(true);
    $celulatit02->alinhamento   = 'right';
    $celulatit02->valor         = 'Inicial';
    array_push($celulastit, $celulatit02);

    $linhatit->celulas          = $celulastit;

    array_push($linhas, $linhatit);

    $numlin = 0;
    $maxlin = count($contarr);

    /* Linhas de dados */
    foreach ($contarr as $contobj)
    {
        $linhadado              = new lib\ui\linhatabela(false, ($numlin == 0), ($numlin == $maxlin - 1));
        $celulasdado            = array();

        $celula01               = new lib\ui\celulatabela(false);
        $celula01->valor        = $contobj->nome;
        $celula01->url          = "transacoes.php?c=$contobj->id";
        array_push($celulasdado, $celula01);

        $celula02               = new lib\ui\celulatabela(false);
        $celula02->alinhamento  = 'right';
        $celula02->valor        = number_format($contobj->saldo / 100, 2, ',', '.');
        $celula02->url          = "transacoes.php?c=$contobj->id";
        array_push($celulasdado, $celula02);

        $linhadado->celulas     = $celulasdado;

        array_push($linhas, $linhadado);

        $numlin++;
    }

    $tabela->linhas             = $linhas;

    echo($tabela->Gerar());

    echo("</div>\n");
}

echo("</div>\n");
echo("</div>\n");

include_once('../footer.php');
?>