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
public class Base extends Sector {

    private Misil misiles[];
    private int escudo;

    public Base() {
    }

    public Base(int misiles, int escudo, boolean habitable) {
        this.misiles = new Misil[misiles];
        for (int i = 0; i < this.misiles.length; i++) {
            this.misiles[i] = new Misil(); //En la BD solo se guardan cuantos misiles. El tipo y la capacidad de cada uno se lo damos al azar.
        }
        this.escudo = escudo;
    }

    public Base(int misiles, int escudo) {
        this.misiles = new Misil[misiles];
        for (int i = 0; i < this.misiles.length; i++) {
            this.misiles[i] = new Misil(); //En la BD solo se guardan cuantos misiles. El tipo y la capacidad de cada uno se lo damos al azar.
        }
        this.escudo = escudo;
    }

    public void mostrarInfo() {
        System.out.println("Base militar");
        System.out.println("Nivel de escudo: " + this.escudo);
        System.out.println("Misiles: " + this.misiles.length);
        for (int i = 0; i < misiles.length; i++) {
            System.out.println(misiles[i]);
        }
    }

    @Override
    public String toString() {
        return "Base{" + super.toString() + "misiles=" + misiles.length + ", escudo=" + escudo + '}';
    }

    public int getEscudo() {
        return escudo;
    }
    
    
    @Override
    public String getDescAbreviada(){
        return "BM. " + this.misiles.length + " Es: " + this.escudo;
    }

    public Object[] getCuantosMisiles() {
        Object c[] = new Object[this.misiles.length];
        for (int i = 0; i < this.misiles.length; i++) {
            c[i]=i+1;
        }
        return c;
    }

}
