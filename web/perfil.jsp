<%-- 
    Document   : perfil
    Created on : 30/07/2015, 08:44:27 AM
    Author     : adsi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  

String usr = "hola";
String nombre = "Nombre";
String contraseña = "121212contraseña";
String apellidos = "apellidos";
String raza = "raaaasaaaaa";
String especie = "especieeee";

        


%>
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
                                <legend>Perfil</legend>
                                <div class="col-md-8 col-md-push-2">
                                    
                                    <div class="col-md-8 col-md-push-2">
                                    <div class="form-group">
                                        <label for="input" class="col-lg-2 control-label">Nombre</label>
                                        <div class="col-lg-10">
                                             <label for="input" class="col-lg-2 control-label"><%= nombre%></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword" class="col-lg-2 control-label">Contraseña</label>
                                        <div class="col-lg-10">
                                             <label for="input" class="col-lg-2 control-label"><%= contraseña%></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputText" class="col-lg-2 control-label">Email</label>
                                        <div class="col-lg-10">
                                             <label for="input" class="col-lg-2 control-label"><%= usr%></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputText" class="col-lg-2 control-label">Apellidos</label>
                                        <div class="col-lg-10">
                                            <label for="input" class="col-lg-2 control-label"><%= apellidos%></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputText" class="col-lg-2 control-label">Direccion</label>
                                        <div class="col-lg-10">
                                             <label for="input" class="col-lg-2 control-label"><%= direccion%></label>
                                        </div>
                                    </div>
                                   
                                    <div class="form-group">
                                        <label for="inputText" class="col-lg-2 control-label">Telefono</label>
                                        <div class="col-lg-10">
                                             <label for="input" class="col-lg-2 control-label"><%= telefono%></label>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label for="inputText" class="col-lg-2 control-label">Celular</label>
                                        <div class="col-lg-10">
                                           <label for="input" class="col-lg-2 control-label"><%= celular%></label>
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

    
</body>
</html>