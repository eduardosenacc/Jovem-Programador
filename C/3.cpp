#include <stdio.h>
#include <locale.h>
#include <math.h>

int main(){
		setlocale(LC_ALL, "Portuguese");
		
		int num1, num2, i;
		
		printf("Digite o primeiro número inteiro: ");
		scanf("%d", &num1);
		
		printf("Digite o segundo número inteiro: ");
		scanf("%d", &num2);
		
		printf("\nNumeros inteiros entre %d e %d:\n", num1, num2);
		
		i=num1+1;
		
		while(i < num2){
		printf("%d", i);
		i++;
		
		
		}
		
		printf("\n");
		
		
		return 0;
}

