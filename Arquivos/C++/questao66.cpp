#include <iostream>
#include <string>
 
using namespace std;
 
int main(){
	int op;
	float peso, altura, calc, topo, total, media;
	float imc[10] = {0};
	string resp;
 
	do
	{
		system("cls");
		cout<<"1. Calcular o IMC"<<endl;
		cout<<"2. Mostrar todos IMCs abaixo do Peso"<<endl;
		cout<<"3. Mostrar todos IMCs Saud�veis"<<endl;
		cout<<"4. Mostrar todos IMCs Obsidade Grau I"<<endl;
		cout<<"5. Exibir a soma total dos IMCs"<<endl;
		cout<<"6. Exibir a media de todos IMCs"<<endl;
		cout<<"7. Sair"<<endl;
		cin>>op;
 
		switch(op){
			case 1:
				cout<<"Calculando IMC"<<endl;
				cout<<"Digite o seu peso: "<<endl;
				cin>>peso;
				cout<<"Digite a sua altura: "<<endl;
				cin>>altura;
				for(int i = 0; i < 10; i++){
					if(imc[i] == 0){
					calc = peso / (altura * altura);
					imc[i] = calc;
					topo++;
					break;
				    }
				}
				break;
			case 2:
				//Mostrar todos IMCs abaixo do Peso
				for(int i = 0; i < topo; i++){
					if(imc[i] > 0 && imc[i] < 18.5){
						cout<<"Imc abaixo do peso: "<<topo<<endl;
				    }
					break;
				}
				break;
			case 3:
				//Mostrar todos IMCs Saud�veis
				for(int i = 0; i < topo; i++){
					if(imc[i] > 18.5 && imc[i] < 25){
						cout<<"Imcs saud�veis: "<<topo<<endl;
					}
					break;
				}
				break;
			case 4:
				//Mostrar todos IMCs Obsidade Grau I
				for(int i = 0; i < topo; i++){
					if(imc[i] > 29.9 && imc[i] < 35){
						cout<<"Imcs Obsidade Grau I: "<<topo<<endl;
					}
					break;
				}
				break;
			case 5:
				total = 0;
				//Exibir a soma total dos IMCs
				for(int i = 0; i < topo; i++){
					total = total + imc[i];
				}
				cout<<"Total dos imcs: "<<total<<endl;
				break;
			case 6:
				if(total > 0){
					media  = total / topo;
				}
				cout<<"Media: "<<media<<endl;
				break;
		}
 
		cout<<"Deseja fazer outra opcao?"<<endl;
		cin>>resp;
	}while(resp == "s" || resp == "S");
}
