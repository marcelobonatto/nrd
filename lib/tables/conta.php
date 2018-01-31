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

    public function ListarComSaldoAtual($usuario)
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
}
?>