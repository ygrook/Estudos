package org.example;



public class CriarConta {

    public static void main(String[] args) {
        Conta primeiraConta = new Conta();
        primeiraConta.saldo = 200;
        System.out.println(primeiraConta.getSaldo());

        primeiraConta.saldo += 100;

        System.out.println(primeiraConta.getSaldo());

        Conta segundaConta = new Conta();

        segundaConta.saldo = 300;
        System.out.println("Primeira conta tem: " + primeiraConta.getSaldo());
        System.out.println("Segunda conta tem: " + segundaConta.getSaldo());

        primeiraConta.agencia = 146;

        System.out.println(primeiraConta.agencia);
        System.out.println(primeiraConta.numero);

        segundaConta.agencia = 146;
        System.out.println("Agora a segunda conta esta" + " na agencia: " + segundaConta.agencia);

        if(primeiraConta == segundaConta){
            System.out.println("Mesma conta");
        } else {
            System.out.println("Contas diferentes");
        }

        System.out.println(primeiraConta);
        System.out.println(segundaConta);
    }
}
