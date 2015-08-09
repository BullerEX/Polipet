/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package module.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import module.database.Conexion;
import module.model.Acciones;

/**
 *
 * @author PIPE
 */
@WebServlet(name = "mostrarmascota", urlPatterns = {"/mostrarmascota"})
public class mostrarmascota extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try (PrintWriter out = response.getWriter()) {
          
            String masid = request.getParameter("masid");
            Conexion mysql = new Conexion();
            Connection cn = mysql.getConexion();        
            String query = "select * from mascota where idMascota = '" + masid + "';";
            String dueño = "";
            String nombre = "";
            String raza = "";
            String especie = "";
            String vacunas = "";
            String estado = "";
            String genero = "";
            String caris = "";
            String edad = "";
            boolean existe = false;
            
            Statement stmt;
            stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                existe = true;
                dueño = rs.getString(2);
                nombre = rs.getString(3);
                raza = rs.getString(4);
                especie = rs.getString(5);
                vacunas = rs.getString(6);
                estado = rs.getString(7);
                genero = rs.getString(8);
                caris = rs.getString(9);
                edad = rs.getString(10);
                
            }
            
            if(existe){
                
                HttpSession session = request.getSession(true);
                session.setAttribute("dueño", dueño);
                session.setAttribute("nombre", nombre);
                session.setAttribute("raza", raza);
                session.setAttribute("especie", especie);
                session.setAttribute("vacunas", vacunas);
                session.setAttribute("estado", estado);
                session.setAttribute("genero", genero);
                session.setAttribute("caris", caris);
                session.setAttribute("edad", edad);
                session.setAttribute("masid", masid);
                
                response.sendRedirect("mostrarmascota.jsp");
            
            }else {
                out.print("<script>alert(No existe la mascota)</script>");
            
            }
            cn.close();
        } catch (SQLException ex) {
            Logger.getLogger(mostrarmascota.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
