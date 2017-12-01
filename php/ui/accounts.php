<?php
$titulo     = 'Minhas Contas';
$dir        = '../../';

include_once('../../header.php');

//idusuario = d2f98274-d69e-11e7-b2c2-0a002700000d
$contas     = new lib\tables\conta();
$contarr    = $contas->Listar('d2f98274-d69e-11e7-b2c2-0a002700000d');



include_once('../../footer.php');
?>