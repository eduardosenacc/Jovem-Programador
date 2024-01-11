#include <stdio.h>
#include <locale.h>
#include <windows.h>
// Função 1
int cadastrar(int array[]){
int y;
	
	printf("Digite 10 números inteiros: ");

	for(y=0; y<10; y++){
		scanf("%d", &array[y]);
	}
	system("cls");
	return 0;
}
// Função 2
int mostrar(int array[]){
int y;

	printf("Os numeros cadastrados foram: \n\n");
	for(y=0;y<10; y++){
		printf("%d ", array[y]);
	}
	return 0;
}
// Função 3
int limpar(int array[]){
int y;

	for(y=0;y<10; y++){
		array[y] = 0;
		
	}
	printf("Limpeza feita com sucesso!\n");
	return 0;
}
//Função 4
int mover_direita(int array[]){
int tamanho=10;
int y, x;

x = array[tamanho - 1];

	for (y = tamanho-1; y>0; y--) {
		array[y] = array[y-1];
}

	array[0] = x;

	printf("Os números foram para a direita!\n");
	return 0;
}
//Função 5
int mover_esquerda(int array[]){
int temp;
int y, x;

	temp = array[0];
	for (y = 0; y < y - 1; y++) {
		array[y] = array[y + 1];
	}
	array[y - 1] = temp;
	return 0;
}
//Função 6
int inverter(int array[]){
int temp[10], y;
                        
	    for(y=0; y<10; y++) {      
	        temp[y] = array[9-y];   
	    }                         
	    for(y=0; y<10; y++) {      
	        array[y] = temp[y];     
	    }                         
	                              
	    printf("\nSeu array foi invertido!\n");
	    for(y=0; y<10; y++) {       
	}

}
//Função 7
int especifica(int array[]){
int valor, y;

	 printf("Digite o índice a ser exibido: ");
    scanf("%d", &valor);
    
    if(valor < 0 || valor >= y){
    printf("Índice inválido\n"); 
    } 
	else {
    printf("Valor no índice %d é: %d\n", valor, array[valor]);
	}
}
//Função 8
int sair(){
	exit(1);
}
int main(){
		setlocale(LC_ALL, "Portuguese");
		
	int opcao, y;
	int array[10];

		
		
	do {
		printf("\n\nEscolha uma opção: \n1-Cadastrar 10 números\n2-Mostrar os valores\n3-Limpar \n4-Mover os números para a direita\n5-Mover os números para a esquerda\n6-Inverter a ordem dos números\n7-Mostrar o valor de uma posição específica do array\n8-Sair do programa\n");
		scanf("%d", &opcao);
		
	if(opcao>8){
		for(y=0;y<10; y++){
			array[y] = 0;
			system("cls");
	}
}
	switch (opcao){


		case 1:
		system("cls");
			cadastrar(array);
		break;
		case 2:
		system("cls");
			mostrar(array);
		break;
		case 3:
		system("cls");
			limpar(array);
		break;
		case 4:
		system("cls");
			mover_direita(array);
		break;
		case 5:
		system("cls");
			mover_esquerda(array);
		break;
		case 6:
		system("cls");
			inverter(array);
		break;
		case 7:
		system("cls");
			especifica(array);
		break;
		case 8:
			sair();
		break;
	}
}while (opcao!=0);	

return 0;
}



