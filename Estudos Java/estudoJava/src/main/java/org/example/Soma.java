package org.example;
import java.util.Scanner;

public class Soma {

    // Em Python: def soma(a: int, b: int) -> int: return a + b
    // TODO 1: complete a assinatura/retorno
    // public static ___ soma(___ a, ___ b) { ___ }

    public static int soma(int a, int b){
        return a + b;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // TODO 2: leia um int (em Python: x = int(input()))
        System.out.print("Digite um número inteiro: ");
        int x = sc.nextInt(); // sc.nextInt()


        // TODO 3: leia um double (em Python: y = float(input()))
        System.out.print("Digite um número decimal: ");
        double y = sc.nextDouble(); // sc.nextDouble()

        // TODO 4: s = soma(x, 10)
        int s = soma(x, 10);

        // TODO 5: if s > y: print("s é maior") else: print("s não é maior")
        if (s > y) {
            System.out.println("s é maior");
        } else {
            System.out.println("s não é maior");
        }

        // TODO 6: yi = int(y) e imprima
        int yi = (int) y; // (int) y
        System.out.println("yi = " + yi);

        // TODO 7: msg = "Resultado: " + str(s)
        String msg = "Resultado: " + s;
        System.out.println(msg);

        sc.close();
    }
}
