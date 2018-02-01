<?php
namespace lib\ui;

class celulatabela
{
    public $spanlinha       = 1;
    public $spancoluna      = 1;
    public $alinhamento     = 'left';
    public $tipovalor       = 'texto';      //'texto' ou 'check'
    public $valor;
    public $checado         = true;         //apenas se tipovalor for 'check'
    public $valorguardado   = false;
    public $nomecontrole    = '';
    public $ehmatrizcontr   = false;
    public $nomecontresc    = '';
    public $habilitado      = true;
    public $indicepai       = -1;
    public $classe          = '';
    public $ehtitulo        = FALSE;

    function __construct($ehtitulo)
    {
        $this->ehtitulo = $ehtitulo;
    }

    public function IniciarCelula()
    {
        $html = '<';

        if ($this->ehtitulo)
        {
            $html .= 'th scope="col"';
        }
        else
        {
            $html .= 'td';
        }

        if ($this->classe != '')
        {
            $html .= " class=\"$this->classe\"";
        }

        if ($this->spanlinha > 1)
        {
            $html .= " rowspan=\"$this->spanlinha\"";
        }

        if ($this->spancoluna > 1)
        {
            $html .= " colspan=\"$this->spancoluna\"";
        }

        if ($this->alinhamento != '')
        {
            $html .= " style=\"text-align: $this->alinhamento\"";
        }

        $html .= ">\n";

        return $html;
    }

    public function FinalizarCelula()
    {
        $html = ($this->ehtitulo ? '</th>' : '</td>');
        return $html;
    }

    public function Gerar()
    {
        $html = $this->IniciarCelula() . $this->valor . $this->FinalizarCelula();
        return $html;
    }
}
?>