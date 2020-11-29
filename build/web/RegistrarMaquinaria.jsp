<%-- 
    Document   : RegistrarMaquinaria
    Created on : 17/07/2020, 03:46:36 AM
    Author     : josem
--%>

<%@page import="br.Maquinariabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <link rel="shortcut icon" href="img/LogoIlche.jpeg">
        <script src="jquery.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        <link href="EstilosMenú.css" rel="stylesheet" type="text/css"/>
    </head>
    
     <script>
        
        function validacion(){
                var cod= document.getElementById("txtcodigoMaqui").value;
                var tipo = document.getElementById("txtnombreMaqui").value;
                var cant = document.getElementById("txtcantidadMaqui").value;
                var pre = document.getElementById("txtprecioMaqui").value;
                var pes = document.getElementById("txtpesoCli").value;
                var dim = document.getElementById("txtDimenCli").value;
                              
                if (cod.length === 0){
                    alert("Codigo vacío");
                }else if( tipo.length === 0) {
                    alert("Tipo de maquinaria vacía");
                }else if( cant.length === 0) {
                    alert("Por favor ingresar cantidad");
                }else if( pre.length === 0) {
                    alert("Por favor ingresar precio");
                }else if( pes.length === 0) {
                    alert("Por favor ingresar peso");
                }else if( dim.length === 0) {
                    alert("Por favor ingresar ddimenciones");
                } else{
                    alert("Maquinaria registrada");
                        }
                        
                
                
                
        }
        
    </script>
    
    
    <body style="background: none">
        
        
        
       
			
                       
<form action="RegistrarMaquinaria_V.jsp" method="post">
<div class="card mb-3" style="padding: 0px">
<div class="card-header" style="background: #ffcc20;">
        <i class="fas fa-table"></i>
        <b>REGISTRO DE MAQUINARIA</b></div>
    <div class="card-body" style="background: black; margin: 0; border: 0">
        <div class="table-responsive" >                           
            <table class="table table-borderless " style="background: black; margin: 0; border: 0" id="dataTableDatosBasicos" width="100%" cellspacing="0">
                <thead></thead>
                <tbody style="color: white">
                    <tr>
                        <th scope="row" style="">CODIGO</th>
                        <% 
                         
                        br.Maquinariabr lo = new Maquinariabr();
                        int resultado= lo.Filas();
                        String codigo = "M00" + resultado;
                        
                        %>
                        <td><input class="form-control bg-light"  name="txtcodigoMaqui" id="txtcodigoMaqui"
                                   value="<%= codigo%>" readonly="" required=""
                                   type="text" ></td>
                    </tr>
                    <tr>
                        <th scope="row">TIPO DE MAQUINARIA</th>
                        <td><input class="form-control bg-light"  name="txtnombreMaqui" id="txtnombreMaqui" required="" type="text" ></td>
                    </tr>
                    <tr class="">
                        <th scope="row" class="">CANTIDAD</th>
                        <td><input class=" form-control "  name="txtcantidadMaqui" id="txtcantidadMaqui" required="" type="text" ></td>
                    </tr>                                    
                    <tr>

                        <th scope="row">PRECIO DE ALQUILER (Día)</th>
                        <td><input class="form-control" name="txtprecioMaqui" id="txtprecioMaqui" required="" type="text"></td>
                    </tr>
                    <tr>
                        <th scope="row">PESO(T)</th>
                        <td><input class="form-control" name="txtpesoCli" id="txtpesoCli" required="" type="text" ></td>
                    </tr>
                    <tr>
                        <th scope="row">DIMENSIONES</th>
                        <td><input class="form-control" name="txtDimenCli" id="txtDimenCli" required="" type="text" ></td>
                    </tr>                                 

                </tbody>
            </table>
        </div>
    </div>
</div>


<div align="center">
    <button type="submit" class="btn btn-primary btn-lg btn-block" onclick="validacion()" >GUARDAR</button>
</div>
</form>
        
        
    </body>
    
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
</html>
