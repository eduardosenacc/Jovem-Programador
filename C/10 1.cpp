#include <stdio.h>
#include <locale.h>


int main(){
		setlocale(LC_ALL, "Portuguese");	
	
		
		int gun=1;
		
		/*
		1-SCOULT
		2-M4A1
		3-M4A1-S
		4-AK-47
		5-AWP
		0-Sair
		*/
		
		printf("Escolha uma Op��o: \n1-Scoult\n2-M4A1\n3-M4A1-S\n4-AK47\n5-AWP\n0-Sair\n\n");
		scanf("%d", &gun);

	
		switch(gun){
			
		case 0:
		break;
					
		case 1:
			printf("\nVoc� adquiriu uma Scoult com 100 balas");
		break;
		
		case 2:
			printf("\nVoc� adquiriu uma M4A1 com 80 balas");
		break;
		
		case 3:
			printf("\nVoc� adquiriu uma M4A1-S com 50 balas");
		break;
		
		case 4:
			printf("\nVoc� adquiriu uma AK-47 com 80 balas");
		break;
			
		case 5:
			printf("\nVoc� adquiriu uma AWP com 40 balas");
		break;
			
		default:
			printf("\n N�mero inv�lido! Parab�ns g�nio!");
}
		return 0;
	}
			
			

