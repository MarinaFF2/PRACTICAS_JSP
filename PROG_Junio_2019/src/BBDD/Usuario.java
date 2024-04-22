/*
 * Clase auxiliar no pedida directamente en el examen pero necesaria para interactuar de forma clara con la BD.
 */
package BBDD;

/**
 *
 * @author fernando
 */
public class Usuario {
    private String DNI;
    private String nombre;
    private int nivel;
    private int ganadas;
    private int perdidas;

    public Usuario(String DNI, String nombre, int nivel, int ganadas, int perdidas) {
        this.DNI = DNI;
        this.nombre = nombre;
        this.nivel = nivel;
        this.ganadas = ganadas;
        this.perdidas = perdidas;
    }

    public int getNivel() {
        return nivel;
    }

    
    
    @Override
    public String toString() {
        return "Usuario{" + "DNI=" + DNI + ", nombre=" + nombre + ", nivel=" + nivel + ", ganadas=" + ganadas + ", perdidas=" + perdidas + '}';
    }

    
}
