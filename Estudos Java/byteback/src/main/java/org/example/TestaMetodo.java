package org.example;

public class TestaMetodo {
    public static void main(String[] args) {
        Conta contaDoGabriel = new Conta();
        contaDoGabriel.getSaldo = 100;
        contaDoGabriel.deposita(50);
        System.out.println(contaDoGabriel.getSaldo());

        boolean conseguiuRetirar = contaDoGabriel.saca(20);
        System.out.println(contaDoGabriel);
        System.out.println(conseguiuRetirar);

        Conta contaDaSarah = new Conta();
        contaDaSarah.deposita(1000);

        contaDaSarah.transfere(300, contaDoGabriel);
        if (conseguiuRetirar){
            System.out.println("Transação concluída, seu novo saldo é de: ");
            System.out.println(contaDaSarah.getSaldo());
        } else {
            System.out.println("Saldo insuficiente.");
        }
    }
}
