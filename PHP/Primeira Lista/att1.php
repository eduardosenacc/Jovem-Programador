<?php

 function categorizarIdade($idade) {

    if ($idade > 0 && $idade <= 12) {
        echo "Idade: " . $idade . "<br>Criança";
    } 
    
    elseif ($idade > 12 && $idade <= 20) {
        echo "Idade: " . $idade . "<br>Adolescente";
    } 
    
    elseif ($idade > 20 && $idade <= 65) {
        echo "Idade: " . $idade . "<br>Adulto";
    } 
    
    elseif ($idade > 65 && $idade <= 130) {
        echo "Idade: " . $idade . "<br>Idoso";
    } else {
        echo "Idade: " . $idade . "<br>Idade desconhecida";
    }

}

categorizarIdade(30);

?>