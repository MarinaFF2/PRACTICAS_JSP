package clases;

import java.sql.*;
import java.util.LinkedList;
import javax.swing.JOptionPane;

public class ConexionEstatica {

    //********************* Atributos *************************
    private static java.sql.Connection Conex;
    //Atributo a través del cual hacemos la conexión física.
    private static java.sql.Statement Sentencia_SQL;
    //Atributo que nos permite ejecutar una sentencia SQL
    private static java.sql.ResultSet Conj_Registros;

     public static void nueva(){
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
            String sentencia = "SELECT * FROM usuario WHERE correo = '" + usuario + "' AND clave = '" + clave + "'";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
            if (ConexionEstatica.Conj_Registros.next())//Si devuelve true es que existe.
            {
                existe = new Usuario(Conj_Registros.getString("correo"), Conj_Registros.getInt("edad"), Conj_Registros.getString("clave"), Conj_Registros.getInt("opcion"), Conj_Registros.getInt("actividad"));
            }
        } catch (SQLException ex) {
            System.out.println("Error en el acceso a la BD.");
        }
        return existe;//Si devolvemos null el usuario no existe.
    }
    public static Usuario existeUsu(String usuario) {
        Usuario existe = null;
        try {
            String sentencia = "SELECT * FROM usuario WHERE correo = '" + usuario + "' ";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
            if (ConexionEstatica.Conj_Registros.next())//Si devuelve true es que existe.
            {
                existe = new Usuario(Conj_Registros.getString("correo"), Conj_Registros.getInt("edad"), Conj_Registros.getString("clave"), Conj_Registros.getInt("opcion"), Conj_Registros.getInt("actividad"));
            }
        } catch (SQLException ex) {
            System.out.println("Error en el acceso a la BD.");
        }
        return existe;//Si devolvemos null el usuario no existe.
    }

    public static LinkedList obtenerUsuarios() {
        LinkedList v = new LinkedList<>();
        Usuario u = null;
        try {
            String sentencia = "SELECT * FROM usuario";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
            while (Conj_Registros.next()) {
                u = new Usuario(Conj_Registros.getString("correo"),Conj_Registros.getInt("edad"), Conj_Registros.getString("clave"), Conj_Registros.getInt("opcion"), Conj_Registros.getInt("actividad"));
                v.add(u);
            }
        } catch (SQLException ex) {
        }
        return v;
    }

    //----------------------------------------------------------
    public static void Modificar_Dato_Correo(String tabla, String correo, String Nuevo_correo) throws SQLException {
        String Sentencia = "UPDATE " + tabla + " SET correo = '" + Nuevo_correo + "' WHERE correo = '" + correo + "'";
        ConexionEstatica.Sentencia_SQL.executeUpdate(Sentencia);
    }
    public static void Modificar_Dato_Actividad(String tabla, String correo, int Nuevo_actividad) throws SQLException {
        String Sentencia = "UPDATE " + tabla + " SET actividad = '" + Nuevo_actividad + "' WHERE correo = '" + correo + "'";
        ConexionEstatica.Sentencia_SQL.executeUpdate(Sentencia);
    }
    public static void Modificar_Dato_Clave(String tabla, String correo, String Nuevo_clave) throws SQLException {
        String Sentencia = "UPDATE " + tabla + " SET clave = '" + Nuevo_clave + "' WHERE correo = '" + correo + "'";
        ConexionEstatica.Sentencia_SQL.executeUpdate(Sentencia);
    }
    public static void Modificar_Dato_Edad(String tabla, String correo, int Nuevo_edad) throws SQLException {
        String Sentencia = "UPDATE " + tabla + " SET edad = '" + Nuevo_edad + "' WHERE correo = '" + correo + "'";
        ConexionEstatica.Sentencia_SQL.executeUpdate(Sentencia);
    }
    public static void Modificar_Dato_Opcion(String tabla, String correo, int Nuevo_opcion) throws SQLException {
        String Sentencia = "UPDATE " + tabla + " SET opcion = '" + Nuevo_opcion + "' WHERE correo = '" + correo + "'";
        ConexionEstatica.Sentencia_SQL.executeUpdate(Sentencia);
    }
    //----------------------------------------------------------
    public static void Insertar_Dato(String tabla, String correo, int edad, String clave, int opcion, int actividad) throws SQLException {
        String Sentencia = "INSERT INTO " + tabla + " VALUES ('" + correo + "'," + "'" + edad+"','"+clave + "','" + opcion + "','" + actividad+ "')";
        ConexionEstatica.Sentencia_SQL.executeUpdate(Sentencia);
    }

    //----------------------------------------------------------
    public static void Borrar_Dato(String tabla, String correo) throws SQLException {
        String Sentencia = "DELETE FROM " + tabla + " WHERE correo = '" + correo + "'";
        ConexionEstatica.Sentencia_SQL.executeUpdate(Sentencia);
    }

}
