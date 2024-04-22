/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

/**
 *
 * @author carlox
 */
public class Serpiente {

    private int edad;
    private String[] serpiente;

    public Serpiente() {
        this.edad = 0;
        this.serpiente = new String[1];
        this.serpiente[0] = this.asignarColor();
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    private String asignarColor() {
        int alea = (int) (Math.random() * 3);
        String color = "";
        switch (alea) {
            case 0:
                color = "#FF0000";
                break;
            case 1:
                color = "#00FF00";
                break;
            case 2:
                color = "#0000FF";
                break;
        }
        return color;
    }

    public String[] recorrerVector() {
        String[] s= new String[serpiente.length];
        for (int i = 0; i < serpiente.length; i++) {
            s[i]=serpiente[i];
        }
        return s;
    }

    public void crecer() {
        String[] aux = new String[serpiente.length + 1];

        for (int i = 0; i < serpiente.length; i++) {
            aux[i] = serpiente[i];
        }
        aux[aux.length - 1] = this.asignarColor();
        this.serpiente = aux;
    }
    public void decrecer() {
        String[] aux = new String[serpiente.length - 1];

        for (int i = 0; i < aux.length; i++) {
            aux[i] = serpiente[i];
        }
        this.serpiente = aux;
    }

}
