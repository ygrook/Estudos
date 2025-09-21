package org.example;

public class TesteReferencias {
    public static void main(String[] args) {
        Conta primeiraConta = new Conta();
        primeiraConta.saldo = 300;

        System.out.println("Saldo da primeira: " + primeiraConta.getSaldo()));

        Conta segundaConta = primeiraConta;

        System.out.println("Saldo da segunda: " + segundaConta.getSaldo()));

        segundaConta.saldo += 100;
        System.out.println("Saldo da segunda: " + segundaConta.getSaldo());
        System.out.println("Saldo da primeira: " + primeiraConta.getSaldo());

        if(primeiraConta == segundaConta){
            System.out.println("Mesma conta");
        } else {
            System.out.println("Contas diferentes");
        }

        System.out.println(primeiraConta);
        System.out.println(segundaConta);
    }
}
