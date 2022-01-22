#include <iostream>

using namespace std;

int main(){
	float salf, vendas, soma;
	
	cout<<"Digite seu salario fixo"<<endl;
	cin>>salf;
	cout<<"Digite a quantidade de vendas"<<endl;
	cin>>vendas;

	vendas = vendas * 0.15;
	soma = salf + vendas;

	cout<<"Total = R$:"<<soma<<endl;
	
}
