#include <iostream>
#include <cstring>

using namespace std;

int main(){
	double v1, v2, media, total, topo;
	double valores[10] = {0,0,0,0,0,0,0,0,0,0};
	int op1;
	string resp;
	
	do{
		cout<<"MENU PRINCINPAL"<<endl;
		cout<<"1 - Somar      "<<endl;
		cout<<"2 - Subtrair   "<<endl;
		cout<<"3 - Dividir    "<<endl;
		cout<<"4- Multiplicar "<<endl;
		cout<<"5 - Somar todos os elementos"<<endl;
		cout<<"6 - Media dos elementos do vetor"<<endl;
		cout<<"7 - Sair       "<<endl;
		cout<<"Informe a opção desejada: "<<endl;
		cin>>op1;
		
		system("cls");
		if(op1 == 1 && op1 == 4){
			cout<<"Digite numero 1: "<<endl;
			cin>>v1;
			cout<<"Digite numero 2: "<<endl;
			cin>>v2;
		}
		
		switch(op1){
			case 1:
				//somar
				for(int i = 0; i < 10; i++){
					if(valores[i] == 0){
						valores[i] = v1 + v2;
						topo++;
						break;
					}
				}
				break;
			case 2:
				//subtrair
				for(int i = 0; i < 10; i++){
					if(valores[i] == 0){
						valores[i] = v1 - v2;
						topo++;
						break;
					}
				}
			    break;
			case 3:
				//Dividir
				for(int i = 0; i < 10; i++){
					if(valores[i] == 0){
						valores[i] = v1 / v2;
						topo++;
						break;
					}
				}
				break;
			case 4:
				//multiplicar
				for(int i = 0; i < 10; i++){
					if(valores[i] == 0){
						valores[i] = v1 * v2;
						topo++;
						break;
					}
				}
				break;
			case 5:
				//somar todos
				total = 0;
				for(int i = 0; i < topo; i++){
					total = total + valores[i];
				}
				cout<<"Soma de todos os elemento: "<<total<<endl;
				break;
			case 6:
				//media todos
				if(total > 0){
					media = total / topo;
					cout<<"Media: "<<media<<endl;
				}else{
					cout<<"Antes de solicitar a media, gere total"<<endl;	
				}
				break;
			case 7:
				//sair
				break;			
		}
		cout<<"Deseja fazer outra operação? S = SIM"<<endl;
		cin>>resp;
		
	}while(resp == "s" || "S");
}
