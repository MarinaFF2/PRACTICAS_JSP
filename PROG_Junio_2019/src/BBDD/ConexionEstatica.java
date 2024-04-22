package BBDD;

import Auxiliar.Constantes;
import Tableros.*;
import java.sql.*;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class ConexionEstatica {

    //********************* Atributos *************************
    private static java.sql.Connection Conex;
    //Atributo a través del cual hacemos la conexión física.
    private static java.sql.Statement Sentencia_SQL;
    //Atributo que nos permite ejecutar una sentencia SQL
    private static java.sql.ResultSet Conj_Registros;

    static {
        try {
            //Cargar el driver/controlador
            String controlador = "com.mysql.jdbc.Driver";
            //String controlador = "oracle.jdbc.driver.OracleDriver";
            //String controlador = "sun.jdbc.odbc.JdbcOdbcDriver"; 
            //String controlador = "org.mariadb.jdbc.Driver"; // MariaDB la version libre de MySQL (requiere incluir la librería jar correspondiente).
            //Class.forName(controlador).newInstance();
            Class.forName(controlador);

            String URL_BD = "jdbc:mysql://localhost/" + Constantes.BBDD;
            //String URL_BD = "jdbc:mariadb://"+this.servidor+":"+this.puerto+"/"+this.bbdd+"";
            //String URL_BD = "jdbc:oracle:oci:@REPASO";
            //String URL_BD = "jdbc:oracle:oci:@REPASO";
            //String URL_BD = "jdbc:odbc:REPASO";

            //Realizamos la conexión a una BD con un usuario y una clave.
            Conex = java.sql.DriverManager.getConnection(URL_BD, Constantes.usuario, Constantes.password);
            Sentencia_SQL = Conex.createStatement();
            System.out.println("Conexion realizada con éxito");
        } catch (Exception e) {
            System.err.println("Exception: " + e.getMessage());
        }

    }

    public static void cerrarBD() {
        try {
            // resultado.close();
            Conex.close();
            System.out.println("Desconectado de la Base de Datos"); // Opcional para seguridad
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "Error de Desconexion", JOptionPane.ERROR_MESSAGE);
        }
    }

    
    
    public static Usuario existeUsuario(String usuario, String clave) {
        Usuario existe = null;
        try {
            String sentencia = "SELECT * FROM usuarios WHERE Nombre = '" + usuario + "' AND Clave = '" + clave + "'";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
            if (ConexionEstatica.Conj_Registros.next())//Si devuelve true es que existe.
            {
                existe = new Usuario(Conj_Registros.getString("DNI"), Conj_Registros.getString("Nombre"), Conj_Registros.getInt("Nivel"), Conj_Registros.getInt("Ganadas"), Conj_Registros.getInt("Perdidas"));
            }
        } catch (SQLException ex) {
            System.out.println("Error en el acceso a la BD.");
        }
        return existe;//Si devolvemos null el usuario no existe.
    }

    
    
    public static LinkedList obtenerBases() {
        LinkedList bases = new LinkedList<>();
        Base b;
        try {
            String sentencia = "SELECT * FROM sectores, bases WHERE sectores.Cod_Sector = bases.Cod_Sector";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
            while(Conj_Registros.next()){
                boolean hab = false;
                if (Conj_Registros.getString("Habitable").equals("s")){
                    hab=true;
                }
                b = new Base(Conj_Registros.getInt("misiles"), Conj_Registros.getInt("escudos"), hab);
//                System.out.println("----");
//                b.mostrarInfo();
//                System.out.println("----");
                bases.add(b);
            }
        } catch (SQLException ex) {
        }
        return bases;
    }

    
    public static LinkedList obtenerCiudades() {
        LinkedList ciudades = new LinkedList<>();
        Ciudad c = null;
        try {
            String sentencia = "SELECT * FROM sectores, ciudades WHERE sectores.Cod_Sector = ciudades.Cod_Sector";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
            while(Conj_Registros.next()){
                boolean hab = false;
                if (Conj_Registros.getString("Habitable").equals("s")){
                    hab=true;
                }
                c = new Ciudad(Conj_Registros.getString("Nombre"), Conj_Registros.getInt("habitantes"),Conj_Registros.getInt("escudos"),hab);
                ciudades.add(c);
            }
        } catch (SQLException ex) {
        }
        return ciudades;
    }

    
    
    public static LinkedList obtenerSecoresNH() {
        LinkedList sectoresnh = new LinkedList<>();
        Sector_nh nh = null;
        try {
            String sentencia = "SELECT * FROM sectores, sector_no_h WHERE sectores.Cod_Sector = sector_no_h.Cod_Sector";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
            while(Conj_Registros.next()){
                boolean hab = false;
                if (Conj_Registros.getString("Habitable").equals("s")){
                    hab=true;
                }
                nh = new Sector_nh(Conj_Registros.getString("Descripcion"), hab);
                sectoresnh.add(nh);
            }
        } catch (SQLException ex) {
        }
        return sectoresnh;
    }

    //----------------------------------------------------------
    public void Modificar_Dato(String tabla, String DNI, String Nuevo_Nombre) throws SQLException {
        String Sentencia = "UPDATE " + tabla + " SET Nombre = '" + Nuevo_Nombre + "' WHERE DNI = '" + DNI + "'";

    }

    //----------------------------------------------------------
    public void Insertar_Dato(String tabla, String DNI, String Nombre, int Tfno) throws SQLException {
        String Sentencia = "INSERT INTO " + tabla + " VALUES ('" + DNI + "'," + "'" + Nombre + "','" + Tfno + "')";

    }

    //----------------------------------------------------------
    public void Borrar_Dato(String tabla, String DNI) throws SQLException {
        String Sentencia = "DELETE FROM " + tabla + " WHERE DNI = '" + DNI + "'";

    }

}
