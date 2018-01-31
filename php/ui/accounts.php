<?php
$titulo     = 'Minhas Contas';

include_once('../../header.php');

//idusuario = d2f98274-d69e-11e7-b2c2-0a002700000d
$contas     = new lib\tables\conta();
$contarr    = $contas->Listar('d2f98274-d69e-11e7-b2c2-0a002700000d');

$tabela     = new lib\ui\tabela();


?>
<table class="table table-striped">
    <thead class="thead-nrd">
        <tr>
            <th scope="col">Nome</th>
            <th scope="col" class="text-right">Inicial</th>
        </tr>
    </thead>
    <tbody>
<?php
foreach ($contarr as $contobj)
{
?>
        <tr>
            <td><?php echo($contobj->nome); ?></td>
            <td class="text-right"><?php echo(number_format($contobj->inicial / 100, 2, ',', '.')); ?></td>
        </tr>
<?php
}
?>
    </tbody>
</table>
<?php
include_once('../../footer.php');
?>