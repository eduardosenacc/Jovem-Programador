<?php

class Pessoa {
    private $nome;
    private $idade;

    public function __construct($nome, $idade) {
        $this->nome = $nome;
        $this->idade = $idade;
    }

    public function getNome() {
        return $this->nome;
    }
    public function setNome($nome){
        $this->nome = $nome;
    }

    public function getidade(){
        return $this->idade;
    }
    public function setIdade($idade){
        $this->idade=$idade;
    }
}
    
    class Aluno extends Pessoa {
        private $matricula;

        public function __construct($nome, $idade, $matricula) {
            parent::__construct($nome, $idade);
            $this->matricula = $matricula;

    }
    public function getMatricula(){
        return $this->matricula;
    }
    public function setMatricula($matricula){
        $this->matricula=$matricula;
    }
  }


    class Professor extends Pessoa {
        private $salario;

        public function __construct($nome, $idade, $salario) {
            parent::__construct($nome, $idade);
            $this->salario = $salario;

   }

    public function getSalario(){
        return $this->salario;
    }
    public function setSalario($salario){
        $this->salario=$salario;
    }
  }

$eduardoAluno = new Aluno("Joao", 22, "2222");
echo "Nome: " . $eduardoAluno->getNome() . "<br>";
echo "Idade: " . $eduardoAluno->getIdade() . "<br>";
echo "Matrícula do Aluno: " . $eduardoAluno->getMatricula() . "<br><br>";

$joaoProfessor = new Professor("Maria", 35, 5000);
echo "Nome do Professor: " . $joaoProfessor->getNome() . "<br>";
echo "Idade do Professor: " . $joaoProfessor->getIdade() . "<br>";
echo "Salário do Professor: $" . $joaoProfessor->getSalario() . "<br>";

?>