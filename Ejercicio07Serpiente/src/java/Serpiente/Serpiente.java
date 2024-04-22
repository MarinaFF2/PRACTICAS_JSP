/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Serpiente;

import java.util.LinkedList;

/**
 *
 * @author laumf
 */
public class Serpiente {

    //**************************************************************************
    //******************************* Atributos ********************************
    //**************************************************************************
    private LinkedList<String> cuerpo;
    private int edad;
    private boolean viva;

    //**************************************************************************
    //***************************** Constructores ******************************
    //**************************************************************************
    public Serpiente(LinkedList<String> cuerpo, int edad, boolean viva) {
        this.cuerpo = cuerpo;
        this.edad = edad;
        this.viva = viva;
    }

    public Serpiente() {
        this.cuerpo = new LinkedList<String>();
        crecer();
        this.edad = 0;
        this.viva = true;
    }

    //**************************************************************************
    //**************************** Getters/Setters *****************************
    //**************************************************************************
    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public boolean isViva() {
        return viva;
    }

    public void setViva(boolean viva) {
        this.viva = viva;
    }

    //**************************************************************************
    //******************************** Métodos *********************************
    //**************************************************************************
    /**
     * Esta función hace que la serpiente crezca y le asigna un color a la nueva
     * anilla.
     */
    public void crecer() {
        this.edad++;
        String anilla = newAnilla();
        this.cuerpo.add(anilla);
    }

    /**
     * Genera un color para la anilla aleatoriamente.
     *
     * @return
     */
    private String newAnilla() {
        int color = (int) (Math.random() * 3);
        String anilla = "";
        switch (color) {
            case 0:
                anilla = "r";
                break;
            case 1:
                anilla = "n";
                break;
            case 2:
                anilla = "a";
        }
        return anilla;
    }

    /**
     * Esta función hace que la serpiente decrezca una anilla y se le añada un
     * año de vida.
     */
    public void decrecer() {
        this.edad++;
        if (this.cuerpo.size() >= 1) {
            this.cuerpo.removeLast();
        }
        if (this.cuerpo.isEmpty()) {
            morir();
        }
    }

    /**
     * Esta función mata a la serpiente.
     */
    public void morir() {
        this.viva = false;
    }

    /**
     * Esta función hace que la serpiente mude la piel generando un color al
     * azar para todas sus anillas.
     *
     * @return
     */
    public void mudarPiel() {
        this.edad++;
        String color = "";
        for (int i = 0; i < this.cuerpo.size(); i++) {
            color = newAnilla();
            this.cuerpo.set(i, color);
        }
    }

    /**
     * Devuelve la longitud del cuerpo de la serpiente.
     *
     * @return
     */
    public int getLength() {
        int len = this.cuerpo.size();
        return len;
    }

    /**
     * Devuelve los datos de la anilla de la posición especificada.
     *
     * @param p
     * @return
     */
    public String getAnilla(int p) {
        String anilla = this.cuerpo.get(p);
        return anilla;
    }
}
