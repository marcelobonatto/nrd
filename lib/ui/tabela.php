<?php
namespace lib\ui;

class tabela
{
    public $classe = "table table-striped";
    public $linhas = array();

    public function IniciarTabela()
    {
        $html = '<table';

        if ($this->classe != '')
        {
            $html .= " class=\"$this->classe\"";
        }

        $html .= ">\n";

        return $html;
    }

    public function FinalizarTabela()
    {
        return "</table>\n";
    }

    public function Gerar()
    {
        $html .= $this->IniciarTabela();

        foreach ($this->linhas as $linha)
        {
            $html .= $linha->Gerar();
        }

        $html .= $this->FinalizarTabela();

        return $html;
    }

    /*
    public function Gerar()
    {
        $html       = "<table class=\"$this->classe\">\n";

        $tdthant    = '';

        foreach ($this->linhas as $numlinha => $linhat)
        {
            $tdth   = ($linhat->ehtitulo ? 'th' : 'td');
            $escopo = ($linhat->ehtitulo ? ' scope="col"' : '');

            if ($tdthant != $tdth)
            {
                if ($tdth == 'th')
                {
                    $html   .= $linhat->IniciarCabecalho();
                }
                else if ($tdth == 'td')
                {
                    $html   .= $linhat->FinalizarCabecalho();
                    $html   .= $linhat->IniciarConteudo();
                }

                $tdthant = $tdth;
            }

            $html   .= "<tr>\n";

            foreach ($linhat->celulas as $colunat)
            {
                if ($colunat->spanlinha > 1)
                {
                    $rowspan    = " rowspan=\"$colunat->spanlinha\"";
                }
                else
                {
                    $rowspan    = '';
                }

                if ($colunat->spancoluna > 1)
                {
                    $colspan    = " colspan=\"$colunat->spancoluna\"";
                }
                else
                {
                    $colspan    = '';
                }

                $alinhamento    = " style=\"text-align: $colunat->alinhamento\"";

                if ($colunat->classe != '')
                {
                    $classe     = " class=\"$colunat->classe\"";
                }
                else
                {
                    $classe     = '';
                }

                $html   .= "<$tdth{$escopo}{$rowspan}{$colspan}{$alinhamento}{$classe}>";

                switch ($colunat->tipovalor)
                {
                    case 'texto':
                        $html       .= "$colunat->valor\n";
                        break;
                    case 'check':
                        $propid         = '';
                        $propnome       = '';

                        if ($colunat->nomecontrole != '')
                        {
                            $idcontr    = $colunat->nomecontrole;
                            $nomecontr  = $colunat->nomecontrole;

                            if ($colunat->ehmatrizcontr)
                            {
                                $idcontr    .= $numlinha;

                                if ($colunat->indicepai > -1)
                                {
                                    $nomecontr  .= "[$colunat->indicepai]";
                                }

                                $nomecontr  .= '[]';
                            }

                            $propid     = " id=\"chk$idcontr\"";
                            $propnome   = " name=\"chk$nomecontr\"";
                        }

                        $desabilitado   = ($colunat->habilitado ? '' : ' disabled="disabled"');
                        $checado        = ($colunat->checado ? " checked=\"checked\"" : "");                        

                        $html           .= "<input{$propid}{$propnome} type=\"checkbox\"{$desabilitado}{$checado} value=\"$colunat->valor\" />\n";

                        break;
                }

                if ($colunat->nomecontresc != '')
                {
                    $propidesc      = '';
                    $propnomeesc    = '';

                    $idcontresc     = $colunat->nomecontresc;
                    $nomecontresc   = $colunat->nomecontresc;

                    if ($colunat->ehmatrizcontr)
                    {
                        $idcontresc     .= $numlinha;

                        if ($colunat->indicepai > -1)
                        {
                            $nomecontresc   .= "[$colunat->indicepai]";
                        }

                        $nomecontresc   .= '[]';
                    }

                    $propidesc      = " id=\"$idcontresc\"";
                    $propnomeesc    = " name=\"$nomecontresc\"";

                    $html   .= "<input type=\"hidden\"{$propidesc}{$propnomeesc} value=\"$colunat->valor\" />\n";
                }

                $html   .= "</$tdth>\n";
            }

            $html   .= "</tr>\n";
        }

        if ($tdthant == 'th')
        {
            $html   .= $linhat->FinalizarCabecalho();
        }
        else if ($tdthant == 'td')
        {            
            $html   .= $linhat->FinalizarConteudo();
        }

        $html   .= "</table>";

        return $html;
    }
    */
}
?>