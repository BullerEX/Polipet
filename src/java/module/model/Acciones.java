/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package module.model;

import static java.lang.System.out;
import module.database.Conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import static module.database.Conexion.pass;
import static module.database.Conexion.url;
import static module.database.Conexion.user;

/**
 *
 * @author ADSI
 */
public class Acciones extends Conexion {

    public void inicializar() {
        Acciones m;
        m = new Acciones();
    }

    public String prueb() throws SQLException {

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

    public void registro(String mail, String password, String nombre, String apellido, String direccion, String telefono, String estrato, String estado, String genero, String celular, String hobbi) throws SQLException {

        
        try {
            Conexion mysql = new Conexion();
            Connection cn = mysql.getConexion();
            Statement st = cn.createStatement();
            String consulta = "INSERT INTO usuario (mail,pass,nombre,apellido,direccion,telefono,estrato,estado,genero,celular,hobbi)VALUES ('" + mail + "','"+password+ "','"+ nombre+"','"+ apellido+"','"+ direccion +"','"+ telefono+"','"+ estrato+"','"+ estado+"','"+ genero +"','"+ celular+"','"+ hobbi+"');";
            st.executeUpdate(consulta);

        }catch (SQLException ex) {
            out.println(ex.toString());
        } 

       
    }

    public void registromascotas(String dueño, String nombre, String raza, String especie, String vacunas, String caracteristicas,String estado, String genero, String años, String usrid) throws SQLException {
        Conexion mysql = new Conexion();
        Connection cn = mysql.getConexion();
        
        try {
           
            Statement st = cn.createStatement();
            String consulta = "INSERT INTO mascota (dueño,nombre,raza,especie,vacunas,estado,genero,caracteristicas,edad,usrid)VALUES ('" +dueño+ "','"+nombre+ "','"+raza+"','"+ especie+"','"+ vacunas +"','"+ estado +"','"+ genero+"','"+ caracteristicas+"','"+ años+"','"+ usrid +"');";
            st.executeUpdate(consulta);
            
        } catch (SQLException ex) {
            Logger.getLogger(Acciones.class.getName()).log(Level.SEVERE, null, ex);

        }
        cn.close();
        
    }

}
