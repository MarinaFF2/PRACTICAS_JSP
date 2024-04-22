/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Package;

import java.util.Arrays;

/**
 *
 * @author laumf
 */
public class Datos {

    //**************************************************************************
    //******************************* Atributos ********************************
    //**************************************************************************
    private int edad;
    private String curso[];
    private String asignaturas[];

    //**************************************************************************
    //***************************** Constructores ******************************
    //**************************************************************************
    public Datos(int edad, String curso[], String asignaturas[]) {
        this.edad = edad;
        this.curso = curso;
        this.asignaturas = asignaturas;
    }

    public Datos() {
        this.edad = 0;
        this.curso = new String[3];
        this.asignaturas = new String[6];
    }

    //**************************************************************************
    //**************************** Getters/Setters *****************************
    //**************************************************************************
    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getCurso(int posicion) {
        return curso[posicion];
    }

    public void setCurso(int posicion, String curso) {
        this.curso[posicion] = curso;
    }

    public String getAsignatura(int posicion) {
        return asignaturas [posicion];
    }

    public void setAsignatura(int posicion, String asignatura) {
        this.asignaturas[posicion] = asignatura;
    }

    //**************************************************************************
    //******************************** Métodos *********************************
    //**************************************************************************
    @Override
    public String toString() {
        return "Datos{" + "edad=" + edad + ", curso=" + Arrays.toString(curso) + ", asignaturas=" + asignaturas + '}';
    }

}
