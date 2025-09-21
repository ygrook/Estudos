package org.example;

public class TestaValores {
    public static void main(String[] args) {
        int total = 0;
        Conta conta = new Conta(1337, 222);

        // Conta está inconsistente com regra de negócio
        conta.setAgencia(-50);
        conta.setNumero(-130);

        System.out.println(conta.getAgencia() + " e " + conta.getNumero());

        Conta conta2 = new Conta(1337, 223);
        Conta conta3 = new Conta(1337, 224);

        System.out.println(Conta.getTotal());
    }
}
