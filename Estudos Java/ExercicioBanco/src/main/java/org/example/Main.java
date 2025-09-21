package org.example;

import java.util.Scanner;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Olá, bem vindo ao Banco Maceio, antes de começar que tal criar uma conta?");

        System.out.println("Digite o seu nome: ");
        String nomeConta = sc.nextLine();
        System.out.println("Digite o valor do seu primeiro depósito: " + "\n Obs: Se você depositar mais de R$500,00 reais" +
                "o seu limite de Cheque Especial é metade do valor depositado. ");
        double depositoConta = sc.nextDouble();

        Conta c = new Conta(nomeConta, depositoConta);

        if(nomeConta.toLowerCase().contains("sarah")){
            System.out.println("Parabéns " + nomeConta + " AMOR DA MINHA VIDA, você acabou de criar uma conta no Banco" +
                    " Maceio, logo você é dona do Banco e do meu coração.");
        } else {
        System.out.println("Parabéns " + nomeConta + " você acabou de criar uma conta no Banco Maceio.");
        }
        int opcao;

        do {
            System.out.println("\n Bem vindo ao Banco de Maceio");
            System.out.println("1 - Consultar saldo");
            System.out.println("2 - Consultar cheque especial");
            System.out.println("3 - Depositar dinheiro");
            System.out.println("4 - Sacar dinheiro");
            System.out.println("5 - Pagamento de boleto");
            System.out.println("6 - Verificar limite uso de cheque especial");

            System.out.println("Digite uma opção: ");
            opcao = sc.nextInt();

            switch (opcao){
                case 1:
                    System.out.println("Saldo atual: " + c.getSaldo());
                    break;
                case 2:
                    System.out.println("Valor do cheque especial: " + c.getChequeEspecial());
                    break;
                case 3:
                    System.out.println("Digite o valor do deposito: ");
                    double adicionaValor = sc.nextInt();
                    c.deposita(adicionaValor);
                    break;
                case 4:
                    System.out.println("Digite o valor do saque: ");
                    double saque = sc.nextDouble();
                    c.saca(saque);
                    break;
                case 5:
                    System.out.println("Digite o código de barrar: ");
                    String codBarras = sc.nextLine();
                    System.out.println("Digite o valor do boleto: ");
                    double valor = sc.nextDouble();
                    c.pagaBoleto(valor, codBarras);
                    break;
                case 6:
                    c.verificaLimiteChequeEspecial();
                    break;
            }

        } while (opcao != 0);
            sc.close();
    }
}