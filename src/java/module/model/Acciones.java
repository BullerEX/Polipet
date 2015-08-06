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
import module.controller.listamascotas;
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

    /*
    public ArrayList listamascotas(String usrid, String rol) {
        Conexion sqlite = new Conexion();
        Connection cn = sqlite.getConexion();
        ArrayList<mascotasm> mascotas;
        mascotas = new ArrayList();

        String query = "";
        switch (rol) {
            case "1":
                query = "select * from mascota;";
                break;
            case "0":
                query = "select * from mascota where usrid = '" + usrid + "';";
                break;
        }

        Statement stmt;
        try {
            stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            

            while (rs.next()) {
                
                mascotasm mypet = new mascotasm();
                mypet.setDueño(rs.getString(1));
                mypet.setNombre(rs.getString(2));
                mypet.setRaza(rs.getString(3));
                mypet.setEspecie(rs.getString(4));
                mypet.setVacunas(rs.getString(5));
                mypet.setEstado(rs.getString(6));
                mypet.setGenero(rs.getString(7));
                mypet.setCaris(rs.getString(8));
                mypet.setEdad(rs.getString(9));
                mypet.setUsrid(rs.getString(10));
                
                mascotas.add(mypet);
            }
            cn.close();
        } catch (SQLException ex) {
            Logger.getLogger(Acciones.class.getName()).log(Level.SEVERE, null, ex);
        }

        return mascotas;
    }
*/
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
            
            /*
            stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            PreparedStatement pst = (PreparedStatement) cn.prepareStatement("insert into mascotas(dueño,nombre,raza,especie,vacunas,caracteristicas,genero,años) values(?,?,?,?,?,?,?,?)");
            pst.setString(1, dueño);
            pst.setString(2, nombre);
            pst.setString(3, raza);
            pst.setString(4, especie);
            pst.setString(5, vacunas);
            pst.setString(6, caracteristicas);
            pst.setString(7, genero);
            pst.setString(8, años);
            //rs = pst.executeQuery(); 
            int i = pst.executeUpdate();

            if (i != 0) {
                mmm = "Registro de Mascota Satisfactorio";
            }
                  */
        } catch (SQLException ex) {
            Logger.getLogger(Acciones.class.getName()).log(Level.SEVERE, null, ex);

        }
        cn.close();
        
    }

}
