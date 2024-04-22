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
public class Misil {

    private int capacidad;
    private String tipo;

    public Misil() {
        this.capacidad = (int) (Math.random() * 100) + 1;
        if ((int)( Math.random() * 2) == 0) {
            this.tipo = "convencional";
        } else {
            this.tipo = "nuclear";
        }
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @Override
    public String toString() {
        return "Misil{" + "capacidad=" + capacidad + ", tipo=" + tipo + '}';
    }

    
}
