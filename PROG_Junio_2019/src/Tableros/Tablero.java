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
public class Tablero {

    private Sector tab[][];
    //También podría ser tipo Object.

    public Tablero() {
        tab = new Sector[4][4];
    }

    public Tablero(int n) {
        tab = new Sector[n][n];
    }

    public boolean setSector(Sector s, int f, int c) {
        boolean colocado = false;
        if (this.tab[f][c] == null) {
            this.tab[f][c] = s;
            colocado = true;
        }
        return colocado;
    }

    public Sector getSector(int f, int c) {
        return this.tab[f][c];
    }

    public void mostrarInfo() {
        for (int i = 0; i < this.tab.length; i++) {
            for (int j = 0; j < this.tab[0].length; j++) {
                System.out.print(this.tab[i][j] + " | ");
            }
            System.out.println("");
        }
    }

    public int getFilas() {
        return this.tab.length;
    }

    public int getCols() {
        return this.tab[0].length;
    }

    @Override
    public String toString() {
        String cad = "";
        for (int i = 0; i < this.tab.length; i++) {
            for (int j = 0; j < this.tab[0].length; j++) {
                cad += this.tab[i][j] + " | ";
            }
            cad += "\n";
        }
        return cad;
    }

    public String getDescAbreviada(int f, int c) {
        return this.tab[f][c].getDescAbreviada();
    }

}
