/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author Nathan
 */
public class Datos {
    
    //************************************************************************//
    //********************************Atributos*******************************//
    //************************************************************************//
    
    private int edad;
    private String curso;
    private String asignaturas[];
    
    //************************************************************************//
    //******************************Constructores*****************************//
    //************************************************************************//
    
    public Datos(int edad, String curso, String[] asignaturas) {
        this.edad = edad;
        this.curso = curso;
        this.asignaturas = asignaturas;
    }
    
    //************************************************************************//
    //*****************************Getters/Setters****************************//
    //************************************************************************//
    
    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String[] getAsignaturas() {
        return asignaturas;
    }

    public void setAsignaturas(String[] asignaturas) {
        this.asignaturas = asignaturas;
    }
    
    //************************************************************************//
    //*********************************Métodos********************************//
    //************************************************************************//

    @Override
    public String toString() {
        return "Datos{" + "edad=" + edad + ", curso=" + curso + ", asignaturas=" + asignaturas + '}';
    }
    
}
