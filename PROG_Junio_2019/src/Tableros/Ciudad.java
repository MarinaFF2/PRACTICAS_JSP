/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tableros;

/**
 *
 * @author fernando
 */
public class Ciudad extends Sector {

    private String nombre;
    private int escudo;
    private int habitantes;

    public Ciudad() {
    }

    public Ciudad(String nombre, int escudo, int habitantes, boolean habitable) {
        super(habitable);
        this.nombre = nombre;
        this.escudo = escudo;
        this.habitantes = habitantes;
    }

    public String getNombre() {
        return nombre;
    }

    public int getEscudo() {
        return escudo;
    }

    public int getHabitantes() {
        return habitantes;
    }


    @Override
    public String toString() {
        return "Ciudad{" + super.toString() + "nombre=" + nombre + ", escudo=" + escudo + ", habitantes=" + habitantes + '}';
    }

    @Override
    public String getDescAbreviada(){
        return "CI. " + this.nombre;
    }
}
