#include <iostream>
#include <cstring>

using namespace std;

int main(){
    int op1, topo = 0, par = 0, imp = 0, total = 0;
	int valores[100] = {0}, valorPar[100] = {0}, valorImp[100] = {0};
	string resp;
	do
	{
		system("cls");
		cout<<"Menu Princinpal"<<endl;
		cout<<"1 - Adcionar valor"<<endl;
		cout<<"2 - Total de valores impares"<<endl;
		cout<<"3 - Total de valores pares"<<endl;
		cout<<"4 - Soma total de todos os valores do vetor"<<endl;
		cout<<"5 - Soma dos valores pares"<<endl;
		cout<<"6 - Soma dos valores impares"<<endl;
		cout<<"7 - Sair"<<endl;
		cin>>op1;
		
		switch(op1){
			case 1:
				cout<<"Adcionando valores..."<<endl;
				for(int i = 0; i < 100; i++){
					if(valores[i] == 0){
						cout<<"Informe o valor: "<<endl;
					    cin>>valores[i];
					}
					
					if (valores[i] % 2 == 0){
						valorPar[par] = valores[i];
						par++;
					}else{
						valorImp[imp] = valores[i];
						imp++;
					}
					break;
				}
				break;
			case 2:
				for(int i = 0; i < imp; i++){
					cout<<"Total de valores impares: "<<imp<<endl;
				}
				break;
			case 3:
				for(int i = 0; i < par; i++){
					cout<<"Total de valors pares: "<<par<<endl;
				}
				break;
			case 4:
				total = 0;
				for(int i = 0; i < valores[i]; i++){
					total = valores[i] + valores[i];
				}
				cout<<"Total dos valores: "<<total<<endl;
				break;
			case 5:
				total = 0;
				for(int i = 0; i < par; i++){
					total = valorPar[i] + valorPar[i];
				}
				cout<<"Soma de todos numeros pares: "<<total<<endl;
				break;
			case 6:
				total = 0;
				for(int i = 0; i < imp; i++){
					total = valorImp[i] + valorImp[i];
				}
				cout<<"Soma de todos numeros impares: "<<total<<endl;
				break;
			case 7:
				break;
			default:
				cout<<"Opcao invalida :)"<<endl;
				break;
		}
		cout<<"Deseja fazer outra operação? [S = SIM]"<<endl;
		cin>>resp;
	}while(resp == "S" || resp == "s");
}

