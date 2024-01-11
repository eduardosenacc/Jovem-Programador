<?php

function somaQuadrados($n) {
  $soma = 0;
  for ($i = 1; $i <= $n; $i++) {
      $soma += $i * $i;
  }
  return $soma;
}

// Exemplo de uso:
$n = 4;
$resultado = somaQuadrados($n);
echo "A soma dos quadrados de 1 a $n é: $resultado";
?>