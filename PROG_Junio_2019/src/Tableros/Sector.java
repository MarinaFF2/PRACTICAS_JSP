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
public class Sector {
    private boolean habitable;

    public Sector() {
    }

    public Sector(boolean habitable) {
        this.habitable = habitable;
    }

    public boolean isHabitable() {
        return habitable;
    }

    public void setHabitable(boolean habitable) {
        this.habitable = habitable;
    }

    @Override
    public String toString() {
        return "Sector{" + "habitable=" + habitable + '}';
    }

    public String getDescAbreviada() {
        return "";
    }
    
    
}
