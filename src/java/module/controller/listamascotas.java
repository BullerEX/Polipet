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
import java.util.ArrayList;
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
import module.model.mascotasm;

/**
 *
 * @author adsi
 */
@WebServlet(name = "listamascotas", urlPatterns = {"/listamascotas"})
public class listamascotas extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            /* out.println("<!DOCTYPE html>");
             out.println("<html>");
             out.println("<head>");
             out.println("<title>Servlet listamascotas</title>");            
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet listamascotas at " + request.getContextPath() + "</h1>");
             out.println("</body>");
             out.println("</html>");
             */
            HttpSession session = request.getSession(false);
            String usrid = (String) session.getAttribute("userid");
            String rol = (String) session.getAttribute("rol");
           /* Conexion sqlite = new Conexion();
            Connection cn = sqlite.getConexion();

            String query = "";
            switch (rol) {
                case "1":
                    query = "select * from mascota;";
                    break;
                case "0":
                    query = "select * from mascota where usrid = '" + usrid + "';";
                    break;
            }
            boolean novacio = false;
            String dueño ="";
            String nombre ="";
            String raza ="";
            String especie ="";
            String vacunas ="";
            String estado ="";
            String genero ="";
            String caris ="";
            String edad ="";
            try {
                Statement stmt;
                stmt = cn.createStatement();
                ResultSet rs = stmt.executeQuery(query);

                while (rs.next()) {

                    dueño = rs.getString(1);
                    nombre = rs.getString(2);
                    raza = rs.getString(3);
                    especie = rs.getString(4);
                    vacunas = rs.getString(5);
                    estado = rs.getString(6);
                    genero = rs.getString(7);
                    caris = rs.getString(8);
                    edad = rs.getString(9);
                    novacio = true;

                }

                if (novacio) {

                    session.setAttribute("dueño", dueño);
                    session.setAttribute("nombre", nombre);
                    session.setAttribute("raza", raza);
                    session.setAttribute("especie", especie);
                    session.setAttribute("vacunas", vacunas);
                    session.setAttribute("estado", estado);
                    session.setAttribute("genero", genero);
                    session.setAttribute("Caris", caris);
                    session.setAttribute("edad", edad);
                    response.sendRedirect("mascotas.jsp");
                    

                } else {
                    
                    response.sendRedirect("perfil.jsp");
                
                }

                cn.close();
            } catch (SQLException ex) {
                Logger.getLogger(Acciones.class.getName()).log(Level.SEVERE, null, ex);
            }*/

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
