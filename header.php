<?php
include_once('autoload.php');
?>
<!DOCTYPE html>
<html lang="pt-BR" class="h-100">
    <header>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title><?php echo(isset($titulo) ? (strlen(trim($titulo)) > 0 ? '[' . trim($titulo) . '] ' : '') : ''); ?>Nosso Rico Dinheirinho</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    </header>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">
                <img src="<?php echo($dir); ?>img/logocplbco.png" alt="Nosso Rico Dinheirinho" />
            </a>
        </nav>