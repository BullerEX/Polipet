<%-- 
    Document   : editarmascota
    Created on : Aug 10, 2015, 1:00:34 AM
    Author     : PIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String dueño = (String) session.getAttribute("dueño");
String nombre = (String) session.getAttribute("nombre");
String raza = (String) session.getAttribute("raza");
String especie = (String) session.getAttribute("especie");
String vacunas = (String) session.getAttribute("vacunas");
String estado = (String) session.getAttribute("estado");
String genero = (String) session.getAttribute("genero");
String caris = (String) session.getAttribute("caris");
String edad = (String) session.getAttribute("edad");
String masid = (String) session.getAttribute("masid");

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

                        <li><a href="login.jsp">Iniciar sesion</a></li>
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
                        <form class="form-horizontal">
                            <fieldset>
                                <legend>Edicion Mascota</legend>
                                <div class="col-md-10 col-md-push-1">
                                    <div class="form-group">
                                        <label for="text" class="col-lg-2 control-label">Dueño</label>
                                        <div class="col-lg-10">
                                            <label for="text" class="col-lg-2 control-label"><%= dueño%></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputText" class="col-lg-2 control-label">Nombre</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="inputEmail" name="nombre" value="<%= nombre%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputText" class="col-lg-2 control-label">Años</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="inputEmail" name="años" value="<%= edad%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputText" class="col-lg-2 control-label">Vacunas</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="inputEmail" name="vacunas" value="<%= vacunas%>">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputText" class="col-lg-2 control-label">Especie</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="inputEmail" name="especie" value="<%= especie%>">

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputText" class="col-lg-2 control-label">Raza</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="inputText" name="raza" value="<%=raza%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Estado:</label>
                                        <div class="col-lg-10">
                                            <div class="radio"><span class="help-block">Adopcion</span>
                                                <label>
                                                    <input type="radio" name="genero" id="optionsRadios1" value="1" checked="">
                                                    Adoptado
                                                </label>
                                                <label>
                                                    <input type="radio" name="genero" id="optionsRadios2" value="2">
                                                    En Adopcion
                                                </label>
                                            </div>
                                            <div class="radio"><span class="help-block">Hogar de paso</span>
                                                <label>
                                                    <input type="radio" name="genero" id="optionsRadios2" value="3">
                                                    En Hogar
                                                </label>
                                                <label>
                                                    <input type="radio" name="genero" id="optionsRadios2" value="4">
                                                    Nesesita Hogar
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Genero:</label>
                                        <div class="col-lg-10">
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="genero" id="optionsRadios1" value="1" checked="">
                                                    Masculino
                                                </label>
                                                <label>
                                                    <input type="radio" name="genero" id="optionsRadios2" value="2">
                                                    Femenino
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="text" class="col-lg-2 control-label">Caracteristicas</label>
                                        <div class="col-lg-10">
                                            <textarea class="form-control" rows="3" id="textArea" name="caracteristicas" ><%=caris%></textarea>
                                            <span class="help-block">Dinos algo sobre la mascota</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-10 col-lg-offset-2">
                                            <a class="btn btn-default"  href="mascotas.jsp">Atras</a>
                                            <button class="btn btn-primary" href="editarmascota">Actualizar mascota</button>
                                        </div>
                                    </div>

                                </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>

        </div>


    </body>
</html>
