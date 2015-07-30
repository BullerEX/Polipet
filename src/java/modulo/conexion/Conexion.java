
package modulo.conexion;
/**
 * you mama.
 */

import java.sql.*;
import javax.swing.JOptionPane;

 /**
 *Clase encargada de la conexion a la base de datos
 * @author Felipe Cardona
 *  
 */
public class Conexion {

    public static Connection cn = null;
    
    public static String db = "mydb";

    public static String user = "root";

    public static String pass = "";
    
    public static String url = "jdbc:mysql://localhost:3306/" + db + "?user=" + user + "&password=" + pass ;

    public static Connection getConexion() throws SQLException {
DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        cn = DriverManager.getConnection(url, user, pass);
        return cn;
    }
}