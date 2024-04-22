/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.util.LinkedList;

/**
 *
 * @author daw207
 */
public class Lista {

    LinkedList<Usuario> lista = new LinkedList<Usuario>();
    Usuario u;

    public Lista() {
    }

    /**
     * private int tamanio(){ int n; return n;
     *
     * @param v}*
     */
    public void addU(Usuario v) {
        this.lista.add(v);
    }

    public void editar(String cor, int edad) {
        for (int j = 0; j < lista.size(); j++) {
            if (this.lista.get(j).getCorreo().equals(cor)) {
                this.lista.get(j).setEdad(edad);
            }
        }

    }
    public void cambiarOpcion(String cor){
        for (int j = 0; j < lista.size(); j++) {
            if (this.lista.get(j).getCorreo().equals(cor)) {
                if(this.lista.get(j).isUser()){
                    this.lista.get(j).setUser(false);
                }else{
                    this.lista.get(j).setUser(true);
                }
            }
        }
    }
    public void aniadirActividad(String cor){
        int n = 0;
        for (int j = 0; j < lista.size(); j++) {
            if (this.lista.get(j).getCorreo().equals(cor)) {
                n = this.lista.get(j).getActividad()+1;
                this.lista.get(j).setActividad(n);
            }
        }
    }
    public int iniciarSesion(String email, String clave){
        int n = 0;
        for (int j = 0; j < this.lista.size(); j++) {
            if ((this.lista.get(j).getCorreo().equals(email)) && (this.lista.get(j).getClave().equals(clave))) {
                n=j;
                j = lista.size();
            } else {
                //out.print("error de usuario o contraseña, revíselo");
            }
        }
        return n;
    }

    public boolean comprobarContrasenia(String email, String clave, String reClave, int edad, boolean opcion){
        int i = 0;
        boolean insertado = false;
        while (i < this.lista.size() && !insertado) {
            if (!email.equals(lista.get(i).getCorreo())) {
                if (clave.equals(reClave)) {
                    Usuario u = new Usuario(email, edad, clave, opcion);
                    lista.add(u);
                    insertado = true;
                    //out.print("ya has creado tu usuario, puedes hacer sesión ahora");
                } else {
                    insertado = true;
                    //out.print("Error las claves no coinciden, vuelve a intentarlo");
                }
            } else {
                //out.print("Cambiar usuario y contraseña");
                insertado = true;
            }
            i++;
        }
        return insertado;
    }
    public void eliminar(String i) {
         for (int j = 0; j < lista.size(); j++) {
            if (this.lista.get(j).getCorreo().equals(i)) {
                this.lista.remove(j);
            }
        }
    }

    public int getTam() {
        return this.lista.size();
    }

    public LinkedList<Usuario> getLista() {
        return lista;
    }

    public void setLista(LinkedList<Usuario> lista) {
        this.lista = lista;
    }

    public Usuario getU(int i) {
        return this.lista.get(i);
    }

    public void setU(Usuario u) {
        this.u = u;
    }

}
