<?php

class Carro {

    private $marca;
    private $modelo;
    private $ano;
    private $VelAtual = 0;

    public function __construct($marca, $modelo, $ano) {
        $this->marca = $marca;    
        $this->modelo = $modelo;
        $this->ano = $ano;
    }

    public function acelerar($velocidade){
        $this->VelAtual +=$velocidade;
        echo "Rammmmmmm! Velocidade: ".$this->VelAtual."Km/h<br>";
    }

    public function frear($velocidade){
        $this->VelAtual -=$velocidade;
        echo "Grrrrrrr! Velocidade: ".$this->VelAtual."Km/h<br>";
    }

    public function getMarca() {
        return $this->marca;
    }
    public function setMarca($marca){
        $this->marca = $marca;
    }

    public function getModelo(){
        return $this->modelo;
    }
    public function setModelo(){
        $this->modelo=$modelo;
    }

    public function getAno(){
        return $this->ano;
    }
    public function setAno($ano){
        $this->ano=$ano;
    }
}

$CarroEduardo = new Carro("Audi", "A4", 1994);
echo "Marca: " . $CarroEduardo->getMarca() . "<br>";
echo "Modelo: " . $CarroEduardo->getModelo() . "<br>";
echo "Ano: " . $CarroEduardo->getAno() . "<br>";

$CarroEduardo->acelerar(50);
$CarroEduardo->acelerar(30);
$CarroEduardo->frear(50);
?>