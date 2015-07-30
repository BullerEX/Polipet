<%-- 
    Document   : newjs
    Created on : 12-may-2015, 11:13:33
    Author     : ADSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <form action="<%=request.getContextPath()%>/Registro" method="post" class="form-horizontal">
  <fieldset>
    <legend>Registro</legend>
    <div class="col-md-8 col-md-push-2">
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Email</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputEmail" placeholder="Pepito123@correo.com">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Contraseña</label>
      <div class="col-lg-10">
        <input type="password" class="form-control" id="inputPassword">
      </div>
    </div>
        <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Confirme Contraseña</label>
      <div class="col-lg-10">
        <input type="password" class="form-control" id="inputPassword">
      </div>
    </div>
        <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Nombre</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputEmail" ">
      </div>
    </div>
        <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Apellidos</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputEmail" >
      </div>
    </div>
        <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Direccion</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputEmail" >
      </div>
    </div>
         <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Telefono</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputEmail" ">
      </div>
    </div>
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Hobbies</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="textArea"></textarea>
        <span class="help-block">Cuentanos algo sobre ti</span>
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label">Genero:</label>
      <div class="col-lg-10">
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
           Masculino
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
            Femenino
          </label>
        </div>
      </div>
    </div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancelar</button>
        <button type="submit" class="btn btn-primary">Registrarme</button>
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