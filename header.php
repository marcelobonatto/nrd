<?php
include_once('autoload.php');
?>
<!DOCTYPE html>
<html lang="pt-BR" class="h-100">
    <header>
        <meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title><?php echo(isset($titulo) ? (strlen(trim($titulo)) > 0 ? '[' . trim($titulo) . '] ' : '') : ''); ?>Nosso Rico Dinheirinho</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="/nrd/css/main.css" />
    </header>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-nrd">
            <a class="navbar-brand" href="#">
                <img src="/nrd/img/logocplbco.png" class="img-responsive" alt="Nosso Rico Dinheirinho" style="width: 300px" />
            </a>
        </nav>