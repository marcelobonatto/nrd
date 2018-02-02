<?php
namespace lib\tables;

class conta
{
    public $id;
    public $usuario;
    public $nome;
    public $tipo;
    public $inicial;
    public $ativa;
    public $saldo;
  
    public function Listar($usuario)
    {
        $matriz     = array();

        $sql        = 'SELECT contaId, usuarioId, contaNome, contaTipo, contaInicial, contaAtiva ' .
                      'FROM contas ' .
                      "WHERE usuarioId = '$usuario' " .
                      'ORDER BY contaTipo, contaNome';

        $bd         = new bancodados();
        $res        = $bd->Selecionar($sql);

        if ($res !== FALSE)
        {
            if (count($res) > 0)
            {
                foreach ($res as $conta)
                {
                    $obj            = new conta();
                    $obj->id        = $conta['contaId'];
                    $obj->usuario   = $conta['usuarioId'];
                    $obj->nome      = $conta['contaNome'];
                    $obj->tipo      = $conta['contaTipo'];
                    $obj->inicial   = $conta['contaInicial'];
                    $obj->ativa     = $conta['contaAtiva'];

                    array_push($matriz, $obj);
                }
            }
        }

        return $matriz;
    }

    public function ListarPorTipoComSaldoAtual($usuario, $tipo)
    {
        $matriz     = array();

        $sql        = 'SELECT c.contaId, c.usuarioId, c.contaNome, c.contaTipo, c.contaInicial, c.contaAtiva, ' .
                      'COALESCE(s.saldoValor, c.contaInicial) + ' .
                      'COALESCE((SELECT	SUM(totalValor) ' .
                      "FROM	(	SELECT	    tr.contaId, CAST(DATE_FORMAT(transacaoData, '%Y%m') AS UNSIGNED) AS mesano, SUM(transacaoValor) AS totalValor " .
                                'FROM	    transacoes tr '. 
                                "GROUP BY	tr.contaId, CAST(DATE_FORMAT(transacaoData, '%Y%m') AS UNSIGNED) " .
                                'UNION ' .
                                "SELECT tr.contaIdDestino AS contaId, CAST(DATE_FORMAT(transacaoData, '%Y%m') AS UNSIGNED) AS mesano, SUM(transacaoValor) * -1 AS totalValor " .
                                'FROM	transacoes tr ' .
                                "GROUP BY tr.contaIdDestino, CAST(DATE_FORMAT(transacaoData, '%Y%m') AS UNSIGNED) " .
                            ') t '.
                      'WHERE t.contaId = c.contaId '.
                      'AND t.mesano = s.saldoMesAno ' .
                      '), 0) AS total '.
                      'FROM contas c ' .
                      'LEFT JOIN (SELECT contaId, saldoId, saldoValor, saldoMesAno ' .
                      'FROM saldos s '.
                      'WHERE saldoMesAno = (SELECT MAX(saldoMesAno) ' .
                      'FROM saldos sm ' .
                      'WHERE sm.contaId = s.contaId ' .
                      "AND sm.saldoMesAno <= CAST(DATE_FORMAT(NOW(), '%Y%m') AS UNSIGNED) " .
                      ') ' .
                      ') s ON s.contaId = c.contaId ' .
                      "WHERE usuarioId = '$usuario' " .
                      "AND contaTipo = '$tipo' " .
                      'ORDER BY contaTipo, contaNome';

        $bd         = new bancodados();
        $res        = $bd->Selecionar($sql);

        if ($res !== FALSE)
        {
            if (count($res) > 0)
            {
                foreach ($res as $conta)
                {
                    $obj            = new conta();
                    $obj->id        = $conta['contaId'];
                    $obj->usuario   = $conta['usuarioId'];
                    $obj->nome      = $conta['contaNome'];
                    $obj->tipo      = $conta['contaTipo'];
                    $obj->inicial   = $conta['contaInicial'];
                    $obj->ativa     = $conta['contaAtiva'];
                    $obj->saldo     = $conta['total'];

                    array_push($matriz, $obj);
                }
            }
        }

        return $matriz;
    }
}
?>