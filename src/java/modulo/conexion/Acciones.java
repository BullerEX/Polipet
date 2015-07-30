/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modulo.conexion;
import java.sql.Connection;
import java.sql.SQLException;
/**
 *
 * @author ADSI
 */
public class Acciones extends Conexion{
    
      public void inicializar() {
        Acciones m;
        m = new Acciones();
      }
    
    public String prueb() throws SQLException{
    
        Conexion sqlite = new Conexion();
         Connection cn = sqlite.getConexion();

        String res = "";

        if (cn != null) {   
            res = "Conexión Exitosa!";
        } else {
            res = "Conexión Fallida :( ";
        }
        return res;
    }
    
    
    
    
}
