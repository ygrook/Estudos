#include <iostream>
#include <string>
#include <locale.h>

using namespace std;

int main(){
	setlocale(LC_ALL, "");
	float aux, maior = 0, posMaior, menor = 0, posMenor, total, media;
    float vetor[50] = {0};
	int op, topo, opEsp;
	string resp, respCalc;
	
	do
	{
		system("cls");
		cout<<"1 - Adcionar valores no vetor"<<endl;
		cout<<"2 - Rotinas especiais"<<endl;
		cout<<"3 - Exibir elemntos"<<endl;
		cin>>op;
		
		switch(op){
			case 1:
				cout<<"Adicionando elementos..."<<endl;
				for(int i = 0; i < 50; i++){
					if(vetor[i] == 0){
						cout<<"Informe o valor que deseja adicionar: "<<endl;
						cin>>vetor[i];
						topo++;
						break;
					}
				}
				break;
			case 2:
				do
				{
					system("cls");
					cout<<"1 - Exibir os elementos em ordem crescente"<<endl;
					cout<<"2 - Mostrar o maior elemento do vetor"<<endl;
					cout<<"3 - Mostrar o menor elemento do vetor"<<endl;
					cout<<"4 - Exibir a soma total dos elementos"<<endl;
					cout<<"5 - Exibir a média dos elementos"<<endl;
					cout<<"6 - Retornar ao menu Principal"<<endl;
					cin>>opEsp;
					
					switch(opEsp){
						case 1:
							//Exibir os vetores em ordem crescente
								for (int i=0; i<topo; i++){
										vetor[i] = vetor[i];
									}
								    for (int i=0; i<topo; i++){
								    	for (int j=i+1; j<topo; j++){
								    		if(vetor[i] > vetor[j]) {
								    			aux = vetor[i];
									    		vetor[i] = vetor[j];
									    		vetor[j] = aux;
									    	}
										}
									}
									for (int i=0; i<topo; i++){
										cout<<""<<endl;
										cout<<vetor[i]<<endl;
									}
									break;
						case 2:
							//Mostrar o maior elemnto do vetor
							maior = vetor[0];
							posMaior = 0;
							for (int i = 0; i < topo; i++){
								if(vetor[i] > maior) {
									maior = vetor[i];
									posMaior = i;
								}
							}
							cout<<"Maior elemento: "<<maior<<endl;
							break;
						case 3:
							//Mostrar o menor elemnto do vetor
							menor = vetor[0];
						    posMenor = 0;
						    for (int i = 1; i < topo; i++) {
						        if (vetor[i] < menor) {
						            menor    = vetor[i];
						            posMenor = i;
						        }
						    }
							cout<<"Menor elemento: "<<menor<<endl;
							break;
						case 4:
							//Exibir a soma total dos elementos
							cout<<"Somando elementos..."<<endl;
							total = 0;
							for(int i = 0; i < topo; i++){
								total = total + vetor[i];
							}
							cout<<"Total: "<<total<<endl;
							break;
						case 5:
							//Exibir a media dos elementos
							cout<<"Media dos elementos..."<<endl;
							total = 0;
							for(int i = 0; i < topo; i++){
								total = total + vetor[i];
							}
							media = total / topo;
							cout<<"Media: "<<media<<endl;
							break;
						case 6:
							//Retornar ao menu Principal
							cout<<"Voltando para o menu principal"<<endl;
							respCalc = "n";
							break;
					}
				    if(opEsp >= 1 && opEsp <= 5){
						cout<<"Deseja realizar outra operação? [S = SIM]"<<endl;
						cin>>respCalc;
					}else{
						respCalc = "n";
					}

				}while(respCalc == "S" || respCalc == "s");
				break;
			case 3:
				//Exibir todos os valores do vetor
				for(int i = 0; i < topo; i++){
					cout<<"Elementos["<<i<<"] "<<vetor[i]<<endl;
			}
			break;
		}
		cout<<"Deseja realizar outra operação? [S = SIM]"<<endl;
		cin>>resp;
	}while(resp == "s" || resp == "S" || resp == "SIM" || resp == "sim" || resp == "Sim");
	
}
