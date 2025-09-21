package org.example;

public class TesteFuncionario {
    public static void main(String[] args) {
        Funcionario ygrook = new Funcionario();

        ygrook.setNome("Gabriel Jesus");
        ygrook.setCpf("1211212-1");
        ygrook.setSalario(3000.00);

        System.out.println(ygrook.getNome());
        System.out.println(ygrook.getBonificao());

    }
}
