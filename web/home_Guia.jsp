<%-- 
    Document   : home_Guia
    Created on : 08/11/2020, 04:29:19 PM
    Author     : josed
--%>

<%@page import="br.GenerarGuiabr"%>
<%@page import="be.GenerarGuiabe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
    </head>
    <script>
        
        function validacion(){
                var moti= document.getElementById("textMotivo").value;
                var dirPa = document.getElementById("textDirPart").value;
                var dirLle = document.getElementById("textDirLle").value;
                var FechEm = document.getElementById("textFechaGui").value;
                var nom = document.getElementById("textnombre").value;
                var ape = document.getElementById("textApellido").value;
                var rucdni = document.getElementById("textRUCDNI").value;
                var descri = document.getElementById("textDescrip").value;
                var cant = document.getElementById("textCantidad").value;
                var peso = document.getElementById("textPeso").value;
                
                
                if (moti.length === 0){
                    alert("Selecciona motivo de traslado");
                }else if( dirPa.length === 0) {
                    alert("dirección de partida vacía");
                }else if( dirLle.length === 0) {
                    alert("Dirección de llegada vacía");
                }else if( FechEm.length === 0) {
                    alert("Fecha vacía");
                }else if( nom.length === 0) {
                    alert("Nombre de cliente vacío");
                }else if( ape.length === 0) {
                    alert("Apellido de cliente vacío");
                }else if( rucdni.length === 0) {
                    alert("RUC o DNI vacío");
                }else if( descri.length === 0) {
                    alert("Descripción vacía");
                }else if( cant.length === 0) {
                    alert("Cantidad vacía");
                }else if( peso.length === 0) {
                    alert("Peso vacío");
                }else{
                    alert("Resgistro creado");
                }
                
        }
        
    </script>
    
    <body style="background: none">
        <form action="home_Guia_V.jsp" method="POST">
        <div class="container-fluid">
            <div class="card bg-warning" style="">
                <div class="card-title bg-warning ">
                    <b><i><h1>GUIA DE REMISIÓN REMITENTE</h1></i></b>
                </div>
                <div class="card-body bg-warning " style="">
                    <div class="container-fluid">
                    <div class="row ">
                        <div class="col-6 bg-info border-top-" style="
                             text-align: center; border-style: solid; ">
                            
                            <b><i><h1>ILCHE</h1></i></b>
                        </div>
                        <div class="col-6 bg-info" style="
                             text-align: center;border-style: solid; ">
                            
                            <b><i><h1>CLIENTE</h1></i></b>
                            
                        </div>
                    </div>
                        <div class="row" style="border-style: solid ">
                            <div class="col-6" style="border-style: solid ">
                                
                                <div class="row bg-warning" >
                                    <div class="col-12" style="" >
                                        <h3><b>datos de remitente</b></h3>
                                    </div>
                                    <div class="col-12" >
                                        <h3><b>Encargado:</b>Ilche Park Cárdenas</h3>
                                    </div>
                                    <div class="col-12" >
                                        <h3><b>Dirección:</b>Los Libertadores Wari - Km. 15.5, Independencia 11640 (Pisco)</h3>
                                    </div>
                                    <div class="col-12" >
                                        <h3><b>RUC:</b> N° 20409637150</h3>
                                    </div>
                                </div>
                                <br>
                                <div class="row bg-warning" style="padding: 5px">
                                    <div class="col-12" style="" >
                                        <h3><b>Denominación del Comprobante</b></h3>
                                    </div>
                                    <div class="col-12" >
                                        <h3>"GUIA DE REMISIÓN-REMITENTE"</h3>
                                    </div>
                                </div>
                                <br>
                                <div class="row bg-warning" style="padding: 5px">
                                    <div class="col-12" style="" >
                                        <h3><b>Numeración</b></h3>
                                    </div>
                                    <div class="col-12" >
                                        <h3>Serie y número correlativo</h3>
                                    </div>
                                </div>
                                <br>
                                <div class="row bg-warning" style="padding: 5px">
                                    <div class="col-12" style="" >
                                        <h3><b>Motivo de traslado</b></h3>
                                    </div>
                                    
                                    <div class="col-12" >
                                        <select name="textMotivo" id="textMotivo" class="form-control">
                                            <option value="TRANSPORTE DE MAQUINARIA">TRANSPORTE DE MAQUINARIA</option>
                                            <option value="TRANSPORTE DE MATERIALES">TRANSPORTE DE MATERIALES</option>
                                        </select>
                                    </div>
                                </div>
                                <br>
                                <div class="row bg-warning" style="padding: 5px">
                                    <div class="col-12" style="" >
                                        <h3><b>Numeración</b></h3>
                                    </div>
                                    <div class="col-12">
                                        <h3>Serie y número correlativo</h3>
                                    </div>
                                </div>
                                
                                
                            </div>
                            
                            
                            <div class="col-6" style=" border-style: solid ">
                                 <div class="row bg-warning" style=";">
                                    <div class="col-12" style="" >
                                        <h3><b>Dirección del punto de partida:</b></h3>
                                    </div>
                                    <div class="col-12" >
                                        <input type="text" placeholder="Ingresar dirección" name="textDirPart" required=""
                                               id="textDirPart" class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="row bg-warning" style="">
                                    <div class="col-12" style="" >
                                        <h3><b>Dirección del punto de llegada:</b></h3>
                                    </div>
                                    <div class="col-12" >
                                        <input type="text" placeholder="Ingresar dirección" name="textDirLle"required=""
                                               id="textDirLle" class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="row bg-warning" style="">
                                    <div class="col-12" style="" >
                                        <h3><b>Fecha de emisión de la Guía</b></h3>
                                    </div>
                                    <div class="col-12" >
                                        <input type="date" name="textFechaGui" id="textFechaGui" required=""
                                               class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="row bg-warning" style="">
                                    <div class="col-12" style="" >
                                        <h3><b>Datos de Cliente</b></h3>
                                    </div>
                                    <div class="col-12"><h3>Nombre</h3></div>
                                    <div class="col-12" >
                                        <input type="text" placeholder="Ingresar Nombre" name="textnombre" id="textnombre" required=""
                                               class="form-control">
                                    </div>
                                    <div class="col-12"><h3>Apellido</h3></div>
                                    <div class="col-12" >
                                        <input type="text" placeholder="Ingresar Apellido" name="textApellido" id="textApellido" required=""
                                               class="form-control">
                                    </div>
                                    <div class="col-12"><h3>R.U.C. o D.N.I.</h3> </div>
                                    <div class="col-12" >
                                        <input type="text" placeholder="R.U.C. o D.N.I." name="textRUCDNI" id="textRUCDNI" required=""
                                               class="form-control">
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <br>
                        <div class="row bg-warning" style="padding: 5px;border-style: solid">
                            <div class="col-12" style="text-align: center" >
                                        <h3><b>Datos del transporte</b></h3>
                                    </div>
                            <div class="col-2">
                                <h3>Descripción</h3>
                            </div>
                            <div class="col-4" >
                                <input type="text" placeholder="Descripción" name="textDescrip" id="textDescrip"
                                       required=""  class="form-control">
                            </div>
                            <div class="col-2">
                                <h3>cantidad</h3>
                            </div>
                            <div class="col-1" >
                                <input type="text" placeholder="Cantidad" name="textCantidad" id="textCantidad"
                                       required=""   class="form-control">
                            </div>
                            <div class="col-1">
                                <h3>Peso</h3>
                            </div>
                            <div class="col-2" >
                                <input type="text" placeholder="Peso" name="textPeso" id="textPeso"
                                       required=""   class="form-control">
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary btn-block" onclick="validacion()">GUARDAR</button>
                </div>
            </div>
        </div></form>
 
        
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>    
    </body>
</html>
