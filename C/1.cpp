#include <stdio.h>
#include <locale.h>
#include <math.h>

int main(){
	setlocale(LC_ALL, "Portuguese");
	
	int idade;
	
	printf("Digite sua idade: ");
	scanf("%d", &idade);
	
	if(idade>=18){
		printf("\nVoc� � maior de idade!");
}
			
	else if(idade<18){
		printf("\nVoc� � menor de idade");
}
	
		
	return 0;
}

