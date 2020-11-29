<%-- 
    Document   : RegistrarVehiculo
    Created on : 19/07/2020, 12:23:21 AM
    Author     : josem
--%>

<%@page import="be.Vehiculobe"%>
<%@page import="br.Vehiculobr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <link rel="shortcut icon" href="img/LogoIlche.jpeg">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        <link href="EstilosMenú.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <script>
        
        function validacion(){
                var cod= document.getElementById("txtcodigoMaqui").value;
                var pla = document.getElementById("txtplacaVe").value;
                var poli = document.getElementById("txtPoliVe").value;
                var peso = document.getElementById("txtpesTaraVe").value;
                var pesoBru = document.getElementById("txtPesoBruVe").value;
                var cargo = document.getElementById("txtcargoUniVe").value;
                
                
                if (cod.length === 0){
                    alert("Codigo vacío");
                }else if( pla.length === 0) {
                    alert("nombre vacío");
                }else if( poli.length === 0) {
                    alert("apellido vacío");
                }else if( peso.length === 0) {
                    alert("DNI vacío");
                }else if( pesoBru.length === 0) {
                    alert("CELULAR vacío");
                }else if( cargo.length === 0) {
                    alert("DIRECCION vacío");
                }else {
                    alert("Vehículo registrado");
                }
        }
        
    </script>
    
    
    
    <body style="background: none">
        
        


        <form action="RegistrarVehiculo_V.jsp" method="post">
    <div class="card mb-3" style="padding: 0px">
<div class="card-header" style="background: #ffcc20;">
            <i class="fas fa-table"></i>
           REGISTRO DE VEHÍVULO</div>
        <div class="card-body" style="background: black; margin: 0; border: 0">
            <div class="table-responsive" >                           
                <table class="table table-borderless " style="background: black; margin: 0; border: 0" id="dataTableDatosBasicos" width="100%" cellspacing="0">
                    <thead></thead>
                    <tbody style="color: white">
                        <tr>
                            <th scope="row" style="">CODIGO</th>
                            <%
                            br.Vehiculobr lo = new Vehiculobr();
                            int resultado= lo.Filas();
                            String codigo = "VH00" + resultado;
                            %>
                            <td><input class="form-control bg-light"  name="txtcodigoMaqui" id="txtcodigoMaqui" type="text"
                                       readonly=""
                                       value="<%=codigo%>"
                                       ></td>
                        </tr>
                        <tr>
                            <th scope="row">PLACA</th>
                            <td><input class="form-control bg-light"  name="txtplacaVe"  id="txtplacaVe"
                                       style="text-transform: uppercase"
                                       type="text" 
                                       ></td>
                        </tr>
                        <tr>
                            <th scope="row">POLIZA</th>
                            <td><input class="form-control"  name="txtPoliVe" id="txtPoliVe"
                                       style="text-transform: uppercase"
                                       type="text" ></td>
                        </tr>                                    
                        <tr>

                            <th scope="row">PESO TARA</th>
                            <td><input class="form-control" name="txtpesTaraVe" id="txtpesTaraVe" type="text" ></td>
                        </tr>
                        <tr>
                            <th scope="row">PESO BRUTO (T)</th>
                            <td><input class="form-control" name="txtPesoBruVe" id="txtPesoBruVe" type="text" ></td>
                        </tr>
                        <tr>
                            <th scope="row">CARGO UNITARIO</th>
                            <td><input class="form-control" name="txtcargoUniVe" id="txtcargoUniVe" type="text" ></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div align="center">
        <button type="submit" class="btn btn-primary btn-lg btn-block" onclick="validacion()">
            GUARDAR</button>
    </div>
</form>



    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
    
</html>
