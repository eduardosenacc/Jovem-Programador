#include <stdio.h>
#include <locale.h>
#include <math.h>

int main(){
		setlocale(LC_ALL, "Portuguese");
		
		int num, soma, c;
		soma = 0;
		c = 0;
		
		printf("Digite um n�mero inteiro positivo: ");
		scanf("%d", &num);
		
		if (num > 0){
			while(num > c){
				soma = soma + c;
				c++;	
			}
		}
		else{
			printf("N�mero inv�lido para a soma.");
	}
	
	printf("A soma dos n�meros � igual a %d.", soma - 1);
	
		
		return 0;
}

