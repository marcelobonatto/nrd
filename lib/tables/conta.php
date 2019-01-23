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

        $sql        = 'SELECT c.conta_id, c.usuario_id, c.conta_nome, c.conta_tipo, c.conta_inicio, c.conta_ativo, ' .
                      'COALESCE(s.saldo_valor, c.conta_inicio) + ' .
                      'COALESCE((SELECT	SUM(totalValor) ' .
                      "FROM	(	SELECT	    tr.conta_id, CAST(DATE_FORMAT(transacao_data, '%Y%m') AS UNSIGNED) AS mesano, SUM(transacao_valor) AS totalValor " .
                                'FROM	    transacoes tr '. 
                                "GROUP BY	tr.conta_id, CAST(DATE_FORMAT(transacao_data, '%Y%m') AS UNSIGNED) " .
                                'UNION ' .
                                "SELECT tr.conta_para AS conta_id, CAST(DATE_FORMAT(transacao_data, '%Y%m') AS UNSIGNED) AS mesano, SUM(transacao_valor) * -1 AS totalValor " .
                                'FROM	transacoes tr ' .
                                "GROUP BY tr.conta_para, CAST(DATE_FORMAT(transacao_data, '%Y%m') AS UNSIGNED) " .
                            ') t '.
                      'WHERE t.conta_id = c.conta_id '.
                      'AND t.mesano = (s.saldo_ano * 100) + s.saldo_mes ' .
                      '), 0) AS total '.
                      'FROM contas c ' .
                      'LEFT JOIN (SELECT conta_id, saldo_id, saldo_valor, saldo_mes, saldo_ano ' .
                      'FROM saldos s '.
                      'WHERE (saldo_ano * 100) + saldo_mes = (SELECT MAX((sm.saldo_ano * 100) + sm.saldo_mes) ' .
                      'FROM saldos sm ' .
                      'WHERE sm.conta_id = s.conta_id ' .
                      "AND (sm.saldo_ano * 100) + sm.saldo_mes <= CAST(DATE_FORMAT(NOW(), '%Y%m') AS UNSIGNED) " .
                      ') ' .
                      ') s ON s.conta_id = c.conta_id ' .
                      "WHERE usuario_id = '$usuario' " .
                      "AND conta_tipo = $tipo " .
                      'ORDER BY conta_tipo, conta_nome';

        $bd         = new bancodados();
        $res        = $bd->Selecionar($sql);

        if ($res !== FALSE)
        {
            if (count($res) > 0)
            {
                foreach ($res as $conta)
                {
                    $obj            = new conta();
                    $obj->id        = $conta['conta_id'];
                    $obj->usuario   = $conta['usuario_id'];
                    $obj->nome      = $conta['conta_nome'];
                    $obj->tipo      = $conta['conta_tipo'];
                    $obj->inicial   = $conta['conta_inicio'];
                    $obj->ativa     = $conta['conta_ativo'];
                    $obj->saldo     = $conta['total'];

                    array_push($matriz, $obj);
                }
            }
        }

        return $matriz;
    }
}
?>