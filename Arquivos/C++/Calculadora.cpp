#include <iostream>
#include <string>

using namespace std;

int main(){
	setlocale(LC_ALL, "");
	double valores[10] = {0};
	double v1, v2;
	int op, op2, topo;
	string resp, respc;
	
	do{
		system("cls");
		cout<<"MENU PRINCIPAL              "<<endl;
	    cout<<"1 - Calcular                "<<endl;
	    cout<<"2 - Somar todos os elemnetos"<<endl;
	    cout<<"3 - Media dos elementos     "<<endl;
	    cout<<"4 - sair                    "<<endl;
	    cout<<"Informe a operação:         "<<endl;
	    cin>>op;
	    switch(op){
	    	case 1:
	    		do{
	    			system("cls");
	    			cout<<"Menu calcular  "<<endl;
	    			cout<<"1 - Somar      "<<endl;
	    			cout<<"2 - Subtrair   "<<endl;
	    			cout<<"3 - Dividir    "<<endl;
	    			cout<<"4 - Multiplicação  "<<endl;
	    			cout<<"5 - Voltar menu princinapl  "<<endl;
	    			cout<<"Informe a opção desejada"<<endl;
	    			cin>>op2;
	    			
	    			if(op2 >= 1 && 4 <= op2){
	    				cout<<"Informe o valor 1: "<<endl;
	    			    cin>>v1;
	    			    cout<<"Informe o valor 1: "<<endl;
	    			    cin>>v2;
					}
	    			
	    			switch(op2){
	    				case 1:
	    					//somar
	    					for(int i = 0; i < 10; i++){
	    						if(valores[i] == 0){
	    							valores[i] = v1 + v2;
									topo++;
									break;
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
	    					break;
	    				case 3:
	    					//dividir
	    					for(int i = 0; i < 10; i++){
	    						if(valores[i] == 0){
	    							valores[i] = v1 / v2;
									topo++;
									break;
								}
	    					break;
	    				case 4:
	    					//Multiplicar
	    					for(int i = 0; i < 10; i++){
	    						if(valores[i] == 0){
	    							valores[i] = v1 * v2;
									topo++;
									break;
								}
	    					break;
	    				case 5:
	    					cout<<"Voltando ao menu principal"<<endl;
	    					respc = "n";
	    					break;
					}
					
					if(respc >= 1 && respc)
					
					cout<<"Deseja realizar outra operação?"<<endl;
					cin>>respc;
				}while(respc == "S" || resp == "s");
	    		break;
	    	case 2:
	    		break;
	    	case 3:
	    		break;
	    	case 4:
	    		break;
		}
	    
	    
	   cout<<"Deseja fazer outra operação?"<<endl; 
	}while
}
