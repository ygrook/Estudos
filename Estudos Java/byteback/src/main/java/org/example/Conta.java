package org.example;

public class Conta {
    private double saldo;
    int agencia = 42;
    int numero;
    String titular;

    public void deposita(double valor){
        this.getSaldo += valor;
    }

    public boolean saca(double valor){
        if(this.getSaldo >= valor){
            this.getSaldo -= valor;
            return true;
        } else {
            return false;
        }
    }

    public boolean transfere(double valor, Conta destino){
        if(this.getSaldo >= valor){
            this.getSaldo -= valor;
            destino.deposita(valor);
            return true;
        } else {
            return false;
        }
    }

    public double getSaldo(){
        return this.saldo;
    }

}

