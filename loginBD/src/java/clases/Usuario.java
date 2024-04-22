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
public class Usuario {
    private String correo;
    private int edad;
    private String clave;
    private int useri = 0;//0-> usuario normal
                                 //1 -> administrador
    private int actividad = 0; //actividad en la base de datos

    public Usuario(String correo, int edad, String clave, int useri,int actividad) {
        this.correo = correo;
        this.edad = edad;
        this.clave = clave;
        this.useri = useri;
        this.actividad = actividad;
    }

    @Override
    public String toString() {
        return "Usuario{" + "correo=" + correo + ", edad=" + edad + ", clave=" + clave + ", user=" + useri +", actividad="+ actividad+" '}'";
    }

    public int getActividad() {
        return actividad;
    }

    public void setActividad(int actividad) {
        this.actividad = actividad;
    }

    
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public int getUser() {
        return useri;
    }

    public void setUser(int useri) {
        this.useri = useri;
    }
    
}
