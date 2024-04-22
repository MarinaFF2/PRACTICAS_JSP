/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.LinkedList;

/**
 *
 * @author Nathan
 */
public class Lista {

    LinkedList<Datos> Encuestas = new LinkedList<Datos>();

    public void addLast(Datos dat) {
        Encuestas.addLast(dat);
    }

    public void get(int n) {
        Encuestas.get(n);
    }

    public int mediaEdad() {
        int media;
        int suma = 0;

        for (int i = 0; i < Encuestas.size(); i++) {
            suma = suma + Encuestas.get(i).getEdad();
        }

        media = suma / Encuestas.size();
        return media;
    }

    public int contCurso(String cur) {
        int cont = 0;

        for (int i = 0; i < Encuestas.size(); i++) {
            if (Encuestas.get(i).getCurso().equals(cur)) {
                cont++;
            }
        }

        return cont;
    }

    public int contAsig(String asig) {
        int cont = 0;

        for (int i = 0; i < Encuestas.size(); i++) {
            for (int j = 0; j < Encuestas.get(i).getAsignaturas().length; j++) {
                if (Encuestas.get(i).getAsignaturas()[j].equals(asig)) {
                    cont++;
                }
            }
        }

        return cont;
    }

}
