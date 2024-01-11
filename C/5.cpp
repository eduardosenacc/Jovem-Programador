#include <stdio.h>
#include <locale.h>
#include <math.h>

int main(){
		setlocale(LC_ALL, "Portuguese");
		
		int num[10];
		int i;
		
		printf("Digite 10 numeros:\n");
		for (i = 0; i < 10; i++) {
    		scanf("%d", &num[i]);
}

	// Exibindo os numeros na tela
		printf("Os numeros digitados foram:\n");
		for (i = 0; i < 10; i++) {
    		printf("%d ", num[i]);
}

return 0;
}
		

