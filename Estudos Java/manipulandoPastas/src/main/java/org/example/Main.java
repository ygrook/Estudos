package org.example;

import java.io.File;
import java.util.Scanner;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite nome de uma pasta: ");
        String strPath = sc.nextLine();

        File path = new File(strPath);

        File[] folders = path.listFiles(File::isDirectory);
        System.out.println("Pastas: ");
        for (File folder : folders){
            System.out.println(folder);
        }
        File[] files = path.listFiles(File::isFile);
        System.out.println("Arquivos: ");
        for (File file : files){
            System.out.println(file);
        }

        boolean success = new File(strPath + "\\subdir").mkdir();
        System.out.println("Diretório criado com sucesso: " + success);
        sc.close();
        }
    }
