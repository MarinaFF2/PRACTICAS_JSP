/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Serpiente;

/**
 *
 * @author isa
 */
public class Serpiente {

    private String cuerpo[];
    private int edad;
    private boolean viva;

    public Serpiente() {
        this.cuerpo = new String[1];
        this.cuerpo[0] = this.colorAnilla();
        this.edad = 0;
        this.viva = true;
    }

    public boolean isViva() {
        return viva;
    }

    public int getEdad() {
        return edad;
    }

    public void morir() {
        this.viva = false;
        this.cuerpo = null;
    }

    /**
     * Este módulo nos va a dar el color de las anillas de la serpiente.
     */
    private String colorAnilla() {
        String color = "";
        int al;
        al = (char) (Math.random() * 3);
        switch (al) {
            case 0:
                color = "red";
                break;
            case 1:
                color = "green";
                break;
            case 2:
                color = "blue";
        }

        return color;
    }

    /**
     * Este módulo va a hacer que la serpiente crezca.
     *
     * @param s Es la serpiente original.
     * @return aux para que el cuerpo de la serpiente aumente de tamaño.
     */
    public void crece() {
        this.cuerpo = aumentar();
        this.cuerpo[this.cuerpo.length - 1] = colorAnilla();
        this.edad++;
    }

    private String[] aumentar() {
        String aux[] = new String[this.cuerpo.length + 1];
        for (int i = 0; i < this.cuerpo.length; i++) {
            aux[i] = this.cuerpo[i];
        }
        return aux;
    }

    /**
     * Este módulo va a hacer que la serpiente disminuya de tamaño.
     *
     * @param s Es la serpiente original.
     * @return aux para que el cuerpo de la serpiente disminuya de tamaño.
     */
    public void decrece() {
        this.cuerpo = disminuir();
        this.edad++;
    }

    private String[] disminuir() {
        String aux[] = new String[this.cuerpo.length - 1];
        for (int i = 0; i < this.cuerpo.length - 1; i++) {
            aux[i] = this.cuerpo[i];
        }
        return aux;
    }

    public void mudar() {
        for (int i = 0; i < this.cuerpo.length; i++) {
            this.cuerpo[i] = colorAnilla();
        }
    }

    @Override
    public String toString() {
        String mens = new String();
        for (int i = 0; i < this.cuerpo.length; i++) {
            mens = mens + "<input type='text' size='2' style='background: "+ this.cuerpo[i] + "'>";
        }
        return mens;
    }

}
