<?php

function fibonacci($n) {
    $anterior = 0;
    $atual = 1;
    
    for ($i = 0; $i < $n; $i++) {
        echo "atual: $atual<br>";
        $proximo = $anterior + $atual;
        $anterior = $atual;
        $atual = $proximo;
    }
}

fibonacci(10); 