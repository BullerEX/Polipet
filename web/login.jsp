<%--
    Document   : login
    Created on : 12-may-2015, 11:12:57
    Author     : ADSI
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="module.model.Acciones" %>
<%@page import="java.sql.Connection"%>
<%@page import="module.database.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 

String usr = (String) session.getAttribute("user");
String Direccion = (String) session.getAttribute("Direccion");
    
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
                       <!--el usuario es Sony tiene como contraseña 12345678--> 
                       
                        <%if (usr != null){%>
                        <li><a href="index.jsp"><%= usr%></a></li>
                        <li><a href="Cerrar">Cerrar sesion</a></li>
                        <%}%>
                        <%if (usr == null){ %>
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
                <div class="col-md-8 col-md-push-2"><div class="panel panel-default">
                        <form action="<%=request.getContextPath()%>/Login" method="post" class="form-horizontal">
                            <fieldset>
                                <legend>Inicio de Sesion</legend>
                                <div class="col-md-8 col-md-push-2">
                                    <div>
                                        <img  src="images/Logopolipet.jpg" >
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail" class="col-lg-2 control-label" name="usuario" value="">Email</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="inputEmail" placeholder="Email" name="email" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword" class="col-lg-2 control-label" name="pass" value="">Password</label>
                                        <div class="col-lg-10">
                                            <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="contra" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-10 col-lg-offset-2">
                                            <a href="registro.jsp" class="btn btn-primary">Registrarse</a>
                                            <button type="submit" class="btn btn-success">iniciar sesion</button>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>

                        </form>

                    </div>
                </div></div>

        </div>
    </div>

    <%  Acciones m;
    m = new Acciones();%>
    <button type="button" class="btn btn-success" onclick = "alert('<%= m.prueb()%>')"/>Conectar</button>
</body>
</html>