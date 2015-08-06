<%-- 
    Document   : mascotas
    Created on : 30/07/2015, 08:45:01 AM
    Author     : adsi
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="module.model.Acciones"%>
<%@page import="module.model.Acciones"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="module.database.Conexion"%>
<%@page import="module.helper.mascotashelper"%>
<%@page import="module.model.mascotasm"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String usrid = (String) session.getAttribute("userid");
    String rol = (String) session.getAttribute("rol");
    String usr = (String) session.getAttribute("user") /*String dueño = (String) session.getAttribute("dueño");
             String nombre = (String) session.getAttribute("nombre");
             String raza = (String) session.getAttribute("raza");
             String especie = (String) session.getAttribute("especie");
             String vacunas = (String) session.getAttribute("vacunas");
             String estado = (String) session.getAttribute("estado");
             String genero = (String) session.getAttribute("genero");
             String caris = (String) session.getAttribute("caris");
             String edad = (String) session.getAttribute("edad")*/;

%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <title>Polipet</title>
        <meta charset="UTF-8">
        <script src="js/jquery-2.1.3.min.js"></script>
        <script src="js/boostrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/boostrap.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">


    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Polipet</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Donaciones</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">

                        <%if (usr != null) {%>
                        <li><a><%= usr%></a></li>
                        <li><a href="Cerrar">Cerrar sesion</a></li>
                            <%} else {%>

                        <li><a href="login.jsp">Iniciar sesion</a></li>
                            <% }%>
                        <li><a href="index.jsp">Noticias </a></li>
                        <li><a href="#">Auxilio</a></li>
                        <li><a href="#">Hogar de paso</a></li>

                    </ul>
                </div>
            </div>
        </nav>
        <div align="center" class="container">
            <div class="row">
                <div class="col-md-9 col-md-push-3"><div class="panel panel-default">
                        <div class="panel-heading">Noticias</div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-10 col-md-push-1"><div class="panel panel-default">
                                        <div class="panel-heading">Jornada de vacunacion itagui</div>
                                        <div class="panel-body">
                                            <table class="table table-striped table-hover ">
                                                <thead>
                                                    <tr>
                                                        <th>Dueño</th>
                                                        <th>Nombre Mascota</th>
                                                        <th>Raza</th>
                                                        <th>Especie</th>
                                                        <th>Vacunas</th>
                                                        <th>Estado</th>
                                                        <th>Genero</th>
                                                        <th>Caracteristicas</th>
                                                        <th>edad</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%  Conexion sqlite = new Conexion();
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
                                                        String dueño = "";
                                                        String nombre = "";
                                                        String raza = "";
                                                        String especie = "";
                                                        String vacunas = "";
                                                        String estado = "";
                                                        String genero = "";
                                                        String caris = "";
                                                        String edad = "";
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

                                                            
                                                    %>
                                                    <tr>
                                                        <td> <%= dueño%> </td>

                                                        <td><%= nombre%></td>
                                                        <td><%=raza%></td>
                                                        <td><%= especie%></td>
                                                        <td><%= vacunas%></td>
                                                        <td><%= estado%></td>
                                                        <td><%= genero%></td>
                                                        <td><%= caris%></td>
                                                        <td><%= edad%></td>


                                                    </tr>

                                                </tbody>
                                            </table>
                                            <%  }

                                                    cn.close();
                                                } catch (Exception ex) {
                                                    Logger.getLogger(Acciones.class.getName()).log(Level.SEVERE, null, ex);
                                                }%>
                                        </div>
                                    </div></div>
                            </div>
                        </div>
                    </div></div>
               <!-- <div class="col-md-3 col-md-pull-9"><div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Mascotas</h3>
                        </div>
                        <div class="panel-body">

                            <div  class="row">
                                <div class="col-md-10 col-md-push-1"><div class="panel panel-default">
                                        <div class="panel-heading">Adopcion</div>
                                        <div class="panel-body">
                                            <img  src="images/gato1.jpg" alt="images/gato1.jpg">
                                            Benediktinermönchen. Neben Hebräisch und Französisch beherrschte er auch Latein. Ab 1355 war er mi
                                        </div>
                                    </div></div></div>
                        </div>
                    </div></div> -->
            </div>
        </div>

    </body>
</html>
