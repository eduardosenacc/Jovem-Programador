#include <stdio.h>
#include <locale.h>
#include <math.h>

int main(){
		setlocale(LC_ALL, "Portuguese");
		
		int num;
		int i;
		
		printf("Digite um numero inteiro positivo: ");
		scanf("%d", &num);

		
		printf("Numeros pares ate %d:\n", num);
		for (i = 1; i <= num; i++) {
		    if (i % 2 == 0) {
		        printf("%d ", i);
		    }
		}
		
		return 0;
	}
