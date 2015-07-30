
package module.database;
/**
 * you mama.
 */

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
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
    
    public static Connection getConexion() {
        
        Connection cn = null;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            cn = DriverManager.getConnection(url, user, pass);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cn;
    }
   
    
}