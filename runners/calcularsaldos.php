<!DOCTYPE html>

<html>
    <header>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>Calcula Saldos</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="/nrd/css/main.css" />
    </header>
    <body>
        <?php
        $idusuario  = '5e619cc2-02ed-49dc-9f65-01b9046c88d2';

        $mysql      = new mysqli('localhost', 'root', '', 'casorg', 3306);

        if ($mysql->connect_error)
        {
            die("Ocorreu um erro na hora de se conectar no banco de dados: <br />$mysql->connect_errno - $mysql->connect_error");
        }

        $mysql->set_charset("utf8");

        /*
        -----------------------------------------------------------------------------------------------------------------------------------
        -- Pegando a lista de contas                                                                                                     --
        -----------------------------------------------------------------------------------------------------------------------------------
        */

        $rcontas    = ListarContas($mysql, $idusuario);

        if ($rcontas)
        {
            while ($linha = $rcontas->fetch_object())
            {
                echo(date('d/m/Y H:i:s') . " - Começando a calcular saldo da conta $linha->conta_nome<br />");

                $inicial    = $linha->conta_inicio;
                echo("------> Inicial: $inicial<br />");

                $rsumtrans  = ObterTransacaoMenorMaior($mysql, $linha->conta_id);

                if ($rsumtrans)
                {
                    if ($rsumtrans->num_rows > 0)
                    {
                        $linhat = $rsumtrans->fetch_object();

                        if ($linhat->mindata != '' && $linhat->maxdata != '')
                        {
                            
                            $dtmin  = new DateTime(substr($linhat->mindata, 0, 8) . '01');
                            $dtmax  = new DateTime(substr($linhat->maxdata, 0, 8) . '01');
                            
                            $prsld  = new DateTime($dtmin->format('Y-m-d'));

                            $saldo  = $inicial;

                            echo('------------> Saldo mês ' . $dtmin->format('m/Y') . " : $saldo<br />");

                            while ($prsld <= $dtmax)
                            {
                                $atsld  = new DateTime($prsld->format('Y-m-d'));                                
                                $prsld->add(date_interval_create_from_date_string("1 months"));                                

                                $satdt  = $atsld->format('Y-m-d');
                                echo("<br />$satdt<br />");
                                $sprdt  = $prsld->format('Y-m-d');
                                echo("<br />$sprdt<br />");

                                $rsaldo = SomarValoresMes($mysql, $linha->conta_id, $saldo, $satdt, $sprdt);

                                if ($rsaldo)
                                {
                                    $linhas = $rsaldo->fetch_object();
                                    $saldo  = $linhas->saldo;

                                    echo('------------> Saldo mês ' . $prsld->format('m/Y') . " : $saldo<br />");

                                    $executou = IncluirSaldo($mysql, $linha->conta_id, $prsld->format('m'), $prsld->format('Y'), $saldo);
                                    echo("----------------> Executou: $executou<br />");
                                }
                            }
                        }
                    }
                    else
                    {
                        echo('------------> Não tem transações<br />');
                    }
                }
                else
                {
                    echo('------------> Não tem transações<br />');
                }
            }
        }
        else
        {
            die("Ocorreu um erro na seleção de contas: <br />$mysql->errno - $mysql->error");
        }

        $mysql->close();

        function ListarContas($mysql, $usuario)
        {
            $sql    =   'SELECT * ' .
                        'FROM contas ' .
                        "WHERE usuario_id = '$usuario'";

            $result =   $mysql->query($sql);

            return $result;
        }

        function ObterTransacaoMenorMaior($mysql, $id)
        {
            $sql    =   'SELECT MIN(transacao_data) AS mindata, MAX(transacao_data) AS maxdata ' .
                        'FROM transacoes ' .
                        "WHERE '$id' IN (conta_id, conta_para)";

            $result =   $mysql->query($sql);

            return $result;
        }

        function SomarValoresMes($mysql, $id, $saldo, $dtini, $dtfim)
        {
            $sql    =   "SELECT $saldo + SUM(transacao_valor * CASE WHEN conta_para = '$id' THEN -1 ELSE 1 END) AS saldo " .
                        'FROM transacoes ' .
                        "WHERE '$id' IN (conta_id, conta_para) " .
                        "AND transacao_data >= '$dtini' " .
                        "AND transacao_data < '$dtfim'";

            $result =   $mysql->query($sql);

            return $result;
        }

        function IncluirSaldo($mysql, $id, $mes, $ano, $saldo)
        {
            $sql    =   'INSERT INTO saldos ' .
                        '(saldo_id, conta_id, saldo_mes, saldo_ano, saldo_valor, saldo_atualizacao) ' .
                        "VALUES (UUID(), '$id', $mes, $ano, $saldo, CURRENT_TIMESTAMP)";

            echo("<br />$sql<br />");

            return $mysql->query($sql);
        }
        ?>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>