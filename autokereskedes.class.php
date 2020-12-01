<?php

class Auto{
    public $nev;
    public $ev;
    public $ajto;
    public $szin;
    public $uzemanyag;
    public $fogyasztas;

    public function __construct($nev,$ev,$ajto,$szin,$uzemanyag,$fogyasztas){
        $this->nev=$nev;
        $this->ev=$ev;
        $this->ajto=$ajto;
        $this->szin=$szin;
        $this->uzemanyag=$uzemanyag;
        $this->fogyasztas=$fogyasztas;
    }
    public function htmlTablazatSor(){
        return "<tr><td>".$this->nev."</td><td>".$this->ev."</td><td>".$this->ajto."</td><td>".$this->szin."</td><td>".$this->uzemanyag."</td><td>".$this->fogyasztas."L/100km"."</td></tr>";
    }
}
?>