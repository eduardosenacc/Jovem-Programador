#include <stdio.h>
#include <locale.h>
#include <math.h>

int main(){
		setlocale(LC_ALL, "Portuguese");
		
		int num1,num2;
		
		printf("\nDigite o primeiro numero inteiro: ");
		scanf("%d", &num1);
		
		printf("\nDigite o segundo numero inteiro: ");
		scanf("%d", &num2);
		
		if(num1>num2){
			printf("\nO %d é o numero maior e o %d menor", num1,num2);
		}
		
		else if(num1<num2){
			printf("\nO %d é o numero maior e o %d menor", num2,num1);
		}
		
		
		return 0;
}

