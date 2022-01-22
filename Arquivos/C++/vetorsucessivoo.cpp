#include <iostream>
#include <string>

using namespace std;

int main(){
	
	int valores[10] = {0};
	int valor = 0;
	
	cout<<"Informe o numero: "<<endl;
	cin>>valor;
	while(valor > 50){
		cout<<"valor incorreto"<<endl;
		cin>>valor;
	}
	
	valores[0] = valor;
	
	for(int i = 0; i < 10; i++){
		if(i > 0){
			valores[i] = valores[i - 1] * 2;
		}
		cout<<"Valor["<<i<<"] = "<<valores[i]<<endl;
	}
	
}
