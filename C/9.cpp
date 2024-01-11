#include <stdio.h>
#include <locale.h>
#include <math.h>

int main(){
		setlocale(LC_ALL, "Portuguese");
		
		float altura,peso,imc;
			
			printf("Digite sua altura: ");
			scanf("%f", &altura);
			
			printf("Digite seu peso: ");
			scanf("%f", &peso);
			
			imc = peso / (altura*altura);	
			
		if(imc<18.5){
			printf("%.2f é Abaixo do peso.\n\n", imc);
	}
		else if(imc >= 18.5 && imc <= 24.9){
			printf("%.2f é Peso Normal.\n\n", imc);
	}
		else if(imc >= 25.0 && imc <= 29.9){
			printf("%.2f é Sobrepeso.\n\n", imc);
	}
		else if(imc >= 30.0 && imc <= 34.9){
			printf("%.2f é Obesidade grau 1.\n\n", imc);
	}
		else if(imc >= 35.0 && imc <= 39.9){
		printf("%.2f é Obesidade grau 2.\n\n", imc);
		}
		else if(imc >=40){
		printf("%.2f é Obesidade grau 3 (mórbida).\n\n", imc);
	}
		
		
	
		return 0;
}

