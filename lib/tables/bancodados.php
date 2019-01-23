<?php
namespace lib\tables;

class bancodados
{
    function Conectar()
    {
        $contarq    = file_get_contents(realpath('../config/config.json'));
        $json       = json_decode($contarq);

        $mysql      = new \mysqli($json->bd->serv, $json->bd->usua, $json->bd->senh, $json->bd->banc, $json->bd->port);
        $mysql->set_charset("utf8");

        return $mysql;
    }

    public function Selecionar($comando)
    {
        $mysql      = $this->Conectar();
        $res        = $mysql->query($comando);

        if (!is_bool($res))
        {
            $itens  = $res->fetch_all(MYSQLI_ASSOC);
        }
        else
        {
            $itens  = $res;
        }

        $mysql->close();

        return $itens;
    }
}
?>