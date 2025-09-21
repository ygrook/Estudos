package org.example;

public class Conta {
    private String nome;
    private double saldo =  0;
    private double chequeEspecial = 0;
    private double limiteChequeEspecial = 0;

    public Conta(String nome, double saldo) {
        this.nome = nome;
        this.saldo = saldo;

        if (this.saldo <= 500.0){
            this.limiteChequeEspecial = 50.0;
            this.chequeEspecial = this.limiteChequeEspecial;
        } else {
            this.limiteChequeEspecial = saldo / 2.0;
            this.chequeEspecial = this.limiteChequeEspecial;
        }
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public double getChequeEspecial() {
        return this.chequeEspecial;
    }

    public boolean saca(double valor) {
        if (this.saldo - valor >= -this.limiteChequeEspecial) {
            this.saldo -= valor;
            System.out.println("Saque de " + valor + " realizado. Saldo atual: " + this.saldo);
            return true;
        } else {
            System.out.println("Saldo insuficiente! Limite do cheque especial atingido.");
            return false;
        }
    }

    public void deposita(double valor) {
        if (this.saldo < 0) {
            double taxa = Math.abs(this.saldo) * 0.20; // 20% da dívida
            double totalDevido = Math.abs(this.saldo) + taxa;

            if (valor >= totalDevido) {
                valor -= totalDevido;
                this.saldo = 0;
                System.out.println("Cheque especial quitado com taxa de " + taxa);
            } else {
                // Abate parte da dívida (já com taxa proporcional embutida)
                this.saldo += valor - taxa;
                valor = 0;
                System.out.println("Depósito usado para reduzir dívida no cheque especial. Saldo atual: " + this.saldo);
                return;
            }
        } else {
            this.saldo += valor;
            System.out.println("Você depositou o valor de: " + valor + "\n Seu novo saldo é de: " + this.saldo);
        }
    }
    public void verificaLimiteChequeEspecial() {
       if (this.saldo <= 0 && this.chequeEspecial < this.limiteChequeEspecial) {
           System.out.println("Você está usando o limite do cheque especial! O seu limite é: " + limiteChequeEspecial);
            } else {
           System.out.println("Você está não usando o limite do cheque especial! O seu limite é: " + limiteChequeEspecial);
       }
    }

    public void pagaBoleto(double valor, String codigoDePagamento) {
        if (saca(valor)) {
            System.out.println("Você pagou o boleto: " + codigoDePagamento + "no valor de: " + valor);
        } else {
            System.out.println("Você não pagou o boleto! \n" + "Motivo: Saldo insuficiente");
        }
    }

}
