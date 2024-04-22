/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author fernando
 */
public class Persona {
    private String DNI;
    private String nombre;
    private int tfno;

    public Persona() {
    }

    public Persona(String DNI, String nombre, int tfno) {
        this.DNI = DNI;
        this.nombre = nombre;
        this.tfno = tfno;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTfno() {
        return tfno;
    }

    public void setTfno(int tfno) {
        this.tfno = tfno;
    }

    @Override
    public String toString() {
        return "Persona{" + "DNI=" + DNI + ", nombre=" + nombre + ", tfno=" + tfno + '}';
    }

    
   
    
}
