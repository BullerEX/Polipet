/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package module.model;

import module.database.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import module.controller.listamascotas;

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

    public ArrayList listamascotas(String usrid, String rol) {
        Conexion sqlite = new Conexion();
        Connection cn = sqlite.getConexion();
        ArrayList<mascotasm> mascotas;
        mascotas = new ArrayList();

        String query = "";
        switch (rol) {
            case "1":
                query = "select * from mascotas;";
                break;
            case "0":
                query = "select * from mascotas where usrid = '" + usrid + "';";
                break;
        }

        Statement stmt;
        try {
            stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                mascotasm mypet = new mascotasm();
                mypet.setUsrid(rs.getString(1));
                mypet.setNombre(rs.getString(2));
                mypet.setGenero(rs.getBoolean(3));
                mypet.setRaza(rs.getString(4));
                mypet.setCaris(rs.getString(5));
                mascotas.add(mypet);
            }
            cn.close();
        } catch (SQLException ex) {
            Logger.getLogger(Acciones.class.getName()).log(Level.SEVERE, null, ex);
        }

        return mascotas;
    }

    public String registro(String mail, String password, String nombre, String apellido, String direccion, String telefono, String estrato, String estado, String genero, String celular, String hobbi) throws SQLException {
        Conexion sqlite = new Conexion();
        Connection cn = sqlite.getConexion();
        Statement stmt;
        String msg ="";
        String query = "";
        try {
            stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            PreparedStatement pst = (PreparedStatement) cn.prepareStatement("insert into 'mydb'.'users'(email,password,nombre,apellido,direccion,telefono,estrato,estado,genero,celular,hobbi) values(?,?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, mail);
            pst.setString(2, password);
            pst.setString(3, nombre);
            pst.setString(4, apellido);
            pst.setString(5, direccion);
            pst.setString(6, telefono);
            pst.setString(7, estrato);
            pst.setString(8, estado);
            pst.setString(9, genero);
            pst.setString(10, celular);
            pst.setString(11, hobbi);
            //rs = pst.executeQuery(); 
            int i = pst.executeUpdate();
            
            if(i!=0){
                msg = "Registro Satisfactorio";
            }

        } catch (SQLException ex) {
            Logger.getLogger(Acciones.class.getName()).log(Level.SEVERE, null, ex);

        }
        cn.close();
        return msg;
    }
    public String registromascotas (){
    
    
    }

}
