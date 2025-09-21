package org.example;

public class TestaGetSet {
    public static void main(String[] args) {
        Conta conta = new Conta(1337, 222);
        conta.setNumero(1337);
        System.out.println(conta.getNumero());

        Cliente gabriel = new Cliente();
        // conta.titular = gabriel;
        gabriel.setNome("gabriel jesus");
        conta.setTitular(gabriel);

        System.out.println(conta.getTitular().getNome());

        conta.getTitular().setProfissao("progamador");
        System.out.println(gabriel.getProfissao());

    }
}
