/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package module.controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.*;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import module.database.Conexion;

/**
 *
 * @author PIPE
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    Connection con = null;

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
        PrintWriter out = response.getWriter();
        try {
            boolean existeUser = false;
            //Guardamos los datos enviados desde la index
            String mail = request.getParameter("email");
            String password = request.getParameter("contra");

            //establemos la conexion
            Conexion mysql = new Conexion();
            Connection cn = mysql.getConexion();

            String consult = "Select * from usuario where mail=? && pass=?";
            ResultSet rs = null;
            PreparedStatement pst = null;
            pst = cn.prepareStatement(consult);
            pst.setString(1, mail);
            pst.setString(2, password);
            rs = pst.executeQuery();
            String usr = mail;
            String m = "";
            int usridint = 0;
            String rol = "";
            String telefono = "";
            String celular = "";
            String direccion = "";
            String usrid = "";
            while (rs.next()) {
                //en caso de existir un conincidencia
                existeUser = true;
                //y remplazmos los atributos de dicho usuario
                m = rs.getString("direccion");
                usridint = rs.getInt("idUsuario");
                usrid = Integer.toString(usridint);
                usr = rs.getString("nombre");
                telefono = rs.getString("telefono");
                direccion = rs.getString("direccion");
                celular = rs.getString("celular");
                rol = rs.getString("rol");
            }
            // clase encapsulamiento herencia parametros basicos servlet aplicacion
            //el usuario es Sony la contraseña es 12345678
            if (existeUser) {
                //para el usuario existente
                //Remplazamos los atributos que luego obtendremos de las paginas jsp

                //mandamos estos atributos a la pagina de bienvenida.jsp
                /*request.getRequestDispatcher("/index.jsp").forward(request, response);    
                 */
                HttpSession session = request.getSession(true);
                session.setAttribute("Direccion", m);
                session.setAttribute("user", usr);
                session.setAttribute("userid", usrid);
                session.setAttribute("telefono", telefono);
                session.setAttribute("direccion", direccion);
                session.setAttribute("celular", celular);
                session.setAttribute("rol", rol);

                response.sendRedirect("index.jsp");

            } else {

                //de lo contrario nos lleva la pagina errorLogin.jsp
                request.getRequestDispatcher("/registro.jsp").forward(request, response);
            }
            out.close();
        } catch (SQLException ex) {
            out.println(ex.toString());
        }

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
