/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tablero;

/**
 *
 * @author laumf
 */
public class Tablero {

    //**************************************************************************
    //******************************* Atributos ********************************
    //**************************************************************************
    private String tab[];

    //**************************************************************************
    //***************************** Constructores ******************************
    //**************************************************************************    
    public Tablero(String[] tab) {
        this.tab = tab;
    }

    public Tablero(int n) {
        this.tab = new String[n];
    }

    //**************************************************************************
    //******************************** Getters *********************************
    //**************************************************************************
    public int getCasillas() {
        return tab.length;
    }

    //**************************************************************************
    //******************************** Métodos *********************************
    //**************************************************************************
    /**
     * Inicia un tablero de juego vacío.
     *
     */
    public void iniciarTablero() {
        for (int i = 0; i < this.tab.length; i++) {
            this.tab[i] = null;
        }
    }

    /**
     * Coloca una mosca en una posición al azar del tablero.
     *
     */
    public void colocarMosca() {
        String mosca = "*";
        int i = (int) (Math.random() * this.tab.length);
        this.tab[i] = mosca;
    }

    public void mostrarTablero() {
        for (int i = 0; i < this.tab.length; i++) {
            if (this.tab[i] == null) {
                System.out.print("[ ]");
            } else {
                System.out.print("[*]");
            }
        }
    }

    /**
     * Recoge la posición donde se ha dado el manotazo y devuelve un resultado
     * en función de si se ha acertado y está muerta, si se ha acertado y no
     * está muerta, si no se ha acercado o si ha estado cerca.
     *
     * @param i
     * @return 0 si no te has acercado, 1 si has estado cerca y ha revoloteado y
     * 2 si la has cazado,.
     */
    public int resultado(int i) {
        int qhp = 0;
        if (this.tab[i] != null) {
            this.tab[i] = null;
            qhp = 2;
        } else {
            if (i > 0) {
                if (this.tab[i - 1] != null) {
                    qhp = 1;
                }
            }
            if (i < this.tab.length - 1) {
                if (this.tab[i + 1] != null) {
                    qhp = 1;
                }
            }
        }
        return qhp;
    }

    /**
     * Hace que la mosca actual se mueva a otra posición.
     */
    public void revolotear() {
        String mosca = "*";
        for (int i = 0; i < this.tab.length; i++) {
            if (this.tab[i] != null) {
                this.tab[i] = null;
            }
        }
        int p = (int) (Math.random() * this.tab.length);
        this.tab[p] = mosca;
    }

    @Override
    public String toString() {
        return "Tablero{" + "tab=" + tab + '}';
    }
}
