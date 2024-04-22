/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author daw207
 */
public class Tablero {

    private int tam=6;
    private boolean t[] = new boolean[tam];

    public Tablero() {
        iniciarMosca();
    }

    public void iniciarMosca() {
        int pos = aleatorio();
        for (int i = 0; i < t.length; i++) {
            if (i == pos) {
                t[i] = true;
            } else {
                t[i] = false;
            }
        }
    }

    /**
     * Manotazo
     *
     * @param golpe -> posicion del manotazo
     * @return -1 error de ejecucion 
     *          0 muerta -> ha ganado 
     *          1 casi muerta -> rebolotea 
     *          2 nada -> vuelve a hacaer manotazo
     */
    public int manotazo(int golpe) {
        int sal=2;

        if (this.t[golpe]) { //true
            sal = 0; //ha matado a la mosca
        } else {
            if(golpe+1 < this.t.length){//fuera del vector por la derecha
                if((this.t[golpe+1])){//true
                    sal=1;
                }
            }
            
            if(golpe-1 >= 0){//fuera del vector por la izquierda
                if((this.t[golpe-1])){//true
                    sal=1;
                }
            }
        }    
        return sal;
    }
    

    public void revotlotear() {
        iniciarMosca();
    }

    private int aleatorio() {
        int n = (int) (Math.random() * tam);
        return n;
    }

    public int getTam() {
        return tam;
    }

    public void setTam(int tam) {
        this.tam = tam;
    }

    

    

    @Override
    public String toString() {
        String sal = "";
        for (int i = 0; i < t.length; i++) {
            if(this.t[i]){ //true
                sal = sal.concat(" * ");
            }else{ //false
                sal = sal.concat(" - ");
            }
        }
        return sal;
    }

}
