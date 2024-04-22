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
public class Sector_nh extends Sector {

    private String descripcion;

    public Sector_nh() {
    }

    public Sector_nh(String descripcion, boolean habitable) {
        super(habitable);
        this.descripcion = descripcion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Sector_nh{" + super.toString() + "descripcion=" + descripcion + '}';
    }

    @Override
    public String getDescAbreviada(){
        return "SNH. " + this.descripcion;
    }
}
