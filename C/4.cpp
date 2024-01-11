#include <stdio.h>
#include <locale.h>
#include <math.h>

int main(){
		setlocale(LC_ALL, "Portuguese");
		
		int num, soma, c;
		soma = 0;
		c = 0;
		
		printf("Digite um número inteiro positivo: ");
		scanf("%d", &num);
		
		if (num > 0){
			while(num > c){
				soma = soma + c;
				c++;	
			}
		}
		else{
			printf("Número inválido para a soma.");
	}
	
	printf("A soma dos números é igual a %d.", soma - 1);
	
		
		return 0;
}

