#include <stdio.h>
#include <locale.h>
#include <math.h>

int main(){
		setlocale(LC_ALL, "Portuguese");
		
		int num, n, c;
		c = 0;
		
		printf("Digite um número inteiro: ");
		scanf("%d", &num);
		
		while(n < 10){
		n++;
		c = n * num;
		printf("\n%d x %d = %d", num,n,c);
		
		}
		
	
		
		
	
	
		
		
		return 0;
}

