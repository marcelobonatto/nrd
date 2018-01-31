<?php
namespace lib\ui;

class linhatabela
{
    public $ehtitulo = FALSE;
    public $celulas = array();
    public $classehead = 'thead-nrd';
    public $classebody = '';
    public $classelinha = '';
    public $ehinicio = FALSE;
    public $ehfim = FALSE;

    function __construct($ehtitulo, $inicio, $fim)
    {
        $this->ehtitulo = $ehtitulo;
        $this->ehinicio = $inicio;
        $this->ehfim = $fim;
    }

    public function IniciarCabecalho()
    {
        $html = '<thead';

        if ($this->classehead != '')
        {
            $html .= " class=\"$this->classehead\"";
        }

        $html .= ">\n";

        return $html;
    }

    public function FinalizarCabecalho()
    {
        return "</thead>\n";
    }

    public function IniciarConteudo()
    {
        $html = '<tbody'; 

        if ($this->classebody != '')
        {
            $html .= " class=\"$this->classebody\"";
        }

        $html .= ">\n";

        return $html;
    }

    public function FinalizarConteudo()
    {
        return "</tbody>\n";
    }

    public function IniciarLinha()
    {
        $html = '<tr';

        if ($this->classelinha != '')
        {
            $html .= " class=\"$this->classelinha\"";
        }

        $html .= ">\n";

        return $html;
    }

    public function FinalizarLinha()
    {
        return "</tr>\n";
    }

    public function Gerar()
    {
        $html   = '';

        if ($this->ehinicio)
        {
            $html .= ($this->ehtitulo ? $this->IniciarCabecalho() : $this->IniciarConteudo);
        }
        
        $html .= $this->IniciarLinha();

        foreach ($this->celulas as $celula)
        {
            $html .= $celula->Gerar();
        }

        $html .= $this->FinalizarLinha();
        
        if ($this->ehfim)
        {
            $html .= ($this->ehtitulo ? $this->FinalizarCabecalho() : $this->FinalizarConteudo());
        }

        return $html;
    }
}
?>