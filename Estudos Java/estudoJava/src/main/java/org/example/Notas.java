package org.example;


import java.util.Scanner;

public class Notas {

    // TODO 1: crie um método estático media que receba um array de double e retorne a média
    // assinatura: public static ___ media(___ valores) { ___ }

    public static double media(double[] a) {
        double total = 0;
        for (int i = 0; i < a.length; i++) {
            total += a[i];
        }
        return total / a.length;
    }

    // TODO 2: crie um método max que devolve o maior valor do array
    // assinatura: public static ___ max(___ valores) { ___ }
    public static double max(double[] a) {
        double valorMax = 0;
        for (int i = 0; i < a.length; i++) {
            if (i == 0){
                valorMax = a[i];
            }
            if (a[i] > valorMax) {
                valorMax = a[i];
            }
        }
        return valorMax;
    }

    // TODO 3: crie um método min que devolve o menor valor do array
    // assinatura: public static ___ min(___ valores) { ___ }
    public static double min(double[] a){
        double valorMin = 0;
        for (int i = 0; i < a.length; i++) {
            if (i == 0){
                valorMin = a[i];
            }
            if (a[i] < valorMin){
                valorMin = a[i];
            }
        }
        return valorMin;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Quantas notas? ");
        int n = sc.nextInt();

        // TODO 4: crie um array de double com tamanho n chamado notas
        double[] notas = new double[n];

        // TODO 5: leia n notas usando um for (use sc.nextDouble()) e armazene em notas[i]
        for (int i = 0; i < n; i++) {
            System.out.print("Nota " + (i + 1) + ": ");
            notas[i] = sc.nextDouble();
        }

        // TODO 6: calcule m = media(notas), ma = max(notas), mi = min(notas)
        double m = media(notas);
        double ma = max(notas);
        double mi = min(notas);

        System.out.println("Média = " + m);
        System.out.println("Maior = " + ma);
        System.out.println("Menor = " + mi);

        // TODO 7: imprima “Aprovados:” e liste (índice e valor) de quem tem nota >= 6.0
        System.out.println("Aprovados:");
        for (int i = 0; i < notas.length; i++) {
            if (notas[i] >= 6.0) { // nota >= 6.0
                System.out.println("#" + i + " -> " + notas[i]);
            }
        }

        sc.close();
    }
}
