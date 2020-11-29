<%-- 
    Document   : Login
    Created on : 24/09/2020, 01:56:34 AM
    Author     : josed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Ilche</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="img/LogoIlche.jpeg">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
    </head>
    
    <script>
        
        function validacion()
        {
                var cod= document.getElementById("textusuario").value;
                var nom = document.getElementById("texpassword").value;
               
                if (cod.length === 0)
                {
                    alert("Usuario vacío");
                } 
                else if( nom.length === 0 ) 
                {
                    alert("Contraseña vacía");
                }
                  
        }
        
    </script>
    
    <body style=" background: url(img/Login1Izquierda.jpg) ; background-repeat: no-repeat;
          width: 100%; min-height: 100vh; background-position: center;background-size: cover;
          background-attachment: fixed;">  
        <div class="float-right " style="background: white;height:100vh; width: 28%; float: right" >
            <div style="height:97vh;">
            <img src="img/LoginFor2.png" alt="" style="height:30%; width: 100% ">
            <form action="Login_V.jsp" method="post">
                <div class="container" style="width: 80%;">
                    <div class="row" >
                        <div class="col-12">
                            Usuario:
                        </div>
                        <div class="col-12">
                            <input class="form-control" type="text" name="textusuario" id="textusuario"
                                           placeholder="alguien@ilche.com" required="" >
                        </div>
                        <div class="col-12">
                            Contraseña:
                        </div>
                        <div class="col-12">
                             <input class="form-control" type="password" name="texpassword" id="texpassword"
                                           placeholder="Contraseña"
                                           required ="" >
                        </div>
                        <div class="col-12">
                            <a href="#" style="font-size: 13px;text-decoration: none">olvidé mi contraseña</a>
                        </div>
                        <div class="col-12">
                             <input class="btn btn-outline-primary btn btn-block" type="submit" onclick="validacion()"
                                   value="Log in" id="new">
                        </div>
                    </div>
                </div>
            </form>
            </div> 
            <div style="height: 2vh ">
                <p style="margin-left:  50px"> © Ilche</p>
            </div>
        </div>
        
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>

