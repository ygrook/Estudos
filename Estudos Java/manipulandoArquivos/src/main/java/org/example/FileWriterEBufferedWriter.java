package org.example;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class FileWriterEBufferedWriter {
    public static void main(String[] args) {
        String[] lines = new String[] {"Bom dia", "Boa tarde", "Boa Noite"};
        String path = "C:/desenv/temp/out.txt";

        // Adicionando true no FileWrite adiciona, sem o true: cria/recria arquivo.
        try(BufferedWriter bw = new BufferedWriter(new FileWriter(path, true))){
            for (String line : lines){
                bw.write(line);
                bw.newLine();
            }
        }
        catch (IOException e){
            e.printStackTrace();
        }
    }
}
