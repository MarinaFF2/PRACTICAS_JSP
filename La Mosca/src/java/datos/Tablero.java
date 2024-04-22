/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

/**
 *
 * @author victor
 */
public class Tablero {

    private int table[];

    public Tablero(int n) {
        this.table = new int[n];
    }

    public void iniciarTablero() {
        for (int i = 0; i < this.table.length; i++) {
            this.table[i] = 0;
        }
    }

    public int colocarMosca() {
        int n = (int) (Math.random() * this.table.length);
        this.table[n] = 1;
        return n;
    }
    
    public int tamaño(){
        return table.length;
    }
    
    public void moverMosca() {
        iniciarTablero();
        colocarMosca();
    }

    public int comprobarMosca(int n) {
        int z=2;
        if (table[n] == 1) {
            z=0;
        }
        if (n - 1 > 0 || z==-1) {
            if (table[n - 1] == 1) {
                moverMosca();
                z=1;
            }
        }
        if (n+1<this.table.length || z==-1){
            if (table[n + 1] == 1) {
                moverMosca();
                z= 1;
            }
        }
        return z;
    }
}
