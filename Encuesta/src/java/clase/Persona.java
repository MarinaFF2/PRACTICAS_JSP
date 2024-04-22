/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clase;

import java.util.ArrayList;

/**
 *
 * @author daw207
 */
public class Persona {
    private int edad;
    private String Curso;
    private ArrayList asignaturas;

    public Persona() {
    }
    
    public Persona(int edad, String Curso, ArrayList asignaturas) {
        this.edad = edad;
        this.Curso = Curso;
        this.asignaturas = asignaturas;
    }

    
    
    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getCurso() {
        return Curso;
    }

    public void setCurso(String Curso) {
        this.Curso = Curso;
    }

    public ArrayList getAsignaturas() {
        return asignaturas;
    }

    public void setAsignaturas(ArrayList asignaturas) {
        this.asignaturas = asignaturas;
    }

    @Override
    public String toString() {
        return "Persona{" + "edad=" + edad + ", Curso=" + Curso + ", asignaturas=" + asignaturas + '}';
    }
    
    
}
