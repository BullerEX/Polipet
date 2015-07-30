<%-- 
    Document   : mascotas
    Created on : 30/07/2015, 08:45:01 AM
    Author     : adsi
--%>

<%@page import="module.helper.mascotashelper"%>
<%@page import="module.model.mascotasm"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String usr = (String) session.getAttribute("user");
    String Direccion = (String) session.getAttribute("Direccion");
    String rol = (String) session.getAttribute("rol");
    String usrid = (String) session.getAttribute("userid");
    ArrayList<mascotasm> mascotas = (ArrayList<mascotasm>) session.getAttribute("mascotas");
    mascotashelper mhd= new mascotashelper();

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
                                                        <th>Genero</th>
                                                        <th>Caracteristicas</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% for (mascotasm m : mascotas) {%>
                                                    <tr>
                                                        <td> <%= usr%> </td>
                                                        <td><%= m.getNombre()%></td>
                                                        <td><%= m.getRaza()%></td>
                                                        <td><%= mhd.Defgen(m.getGenero())%></td>
                                                        <td><%= m.getCaris()%></td>
                                                     
                                                    </tr>
                                                    <% }%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div></div>
                            </div>
                        </div>
                    </div></div>
                <div class="col-md-3 col-md-pull-9"><div class="panel panel-default">
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
                    </div></div>
            </div>
        </div>

    </body>
</html>
