import java.util.Scanner;

public class Main {

    // Em Python: def soma(a: int, b: int) -> int: return a + b
    // TODO 1: complete a assinatura/retorno
    // public static ___ soma(___ a, ___ b) { ___ }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // TODO 2: leia um int (em Python: x = int(input()))
        System.out.print("Digite um número inteiro: ");
        ___ x = ___; // sc.nextInt()

        // TODO 3: leia um double (em Python: y = float(input()))
        System.out.print("Digite um número decimal: ");
        double y = ___; // sc.nextDouble()

        // TODO 4: s = soma(x, 10)
        int s = ___;

        // TODO 5: if s > y: print("s é maior") else: print("s não é maior")
        if (___) {
            System.out.println("s é maior");
        } else {
            System.out.println("s não é maior");
        }

        // TODO 6: yi = int(y) e imprima
        int yi = ___; // (int) y
        System.out.println("yi = " + ___);

        // TODO 7: msg = "Resultado: " + str(s)
        String msg = ___;
        System.out.println(msg);

        sc.close();
    }
}
