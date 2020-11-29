<%-- 
    Document   : AlquilerMaquinaria_AgregarMaquina_2
    Created on : 22/10/2020, 04:01:09 AM
    Author     : josed
--%>

<%@page import="br.Clientebr"%>
<%@page import="be.Clientebe"%>
<%@page import="be.suma"%>
<%@page import="be.AlquilerMaquinariaPreciosbe"%>
<%@page import="br.AlquilerMaquinariaPreciobr"%>
<%@page import="br.Maquinariabr"%>
<%@page import="java.util.List"%>
<%@page import="be.Maquinariabe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <script src="jquery.js" type="text/javascript"></script>
        <link rel="shortcut icon" href="img/LogoIlche.jpeg">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        
    </head>
    
    <body>
        
       
        <div class="card">
            <div class="card-header" style="text-align: left">
                <h1><i>Alquiler de Maquinaria</i></h1>
            </div>
            <div class="card-body">
                
                <div style="border-style: solid; padding: 20px; border-color: #cccccc"> 
                    
                        <div class="row" style="text-align: right">
                              <div class="col-2" style="text-align: left"><i><b><h3>Cliente</h3></b></i> </div>
                              <div class="col-4"></div>
                              <div class="col-2">
                                  <b>DNI</b>
                              </div>
                              <div class="col-2">
                                  <input type="text" style="" id="txtcodigo" 
                                         name="textcodigo1" class="form-control"
                                         maxlength="8"
                                         required pattern="[0-9]{8}"
                                         > 
                              </div>
                              <div class="col-2" style="text-align: left" >
                                  <button class="btn btn-outline-primary" type="submit" onclick="listarCliente()"  >
                                      <i class="fas fa-search"></i></button>
                              </div>
                            </div>
                    
                    <div class="" id="ListaCliente">
                        
                   
                    </div> 
                </div>
                <br>
        <div style="border-style: solid;  border-color: #cccccc;padding: 15px">   
            <div class="col-12" style="text-align: left"><i><b><h3>Agregar Maquinaria</h3></b></i> </div>
                <div class="container" >
                    <div class="row" >
                                    <div class="col-2">
                                        <b>Maquinarias</b>
                                    </div>
                                    <div class="col-3">
                                        <select name="textMaquinaria" id="texMaquinaria" class="form-control" style="width: 100%">
                                            <% 

                                            List<Maquinariabe> lista;
                                            Maquinariabr regla = new Maquinariabr();
                                            lista = regla.listarCliente();
                                             for (Maquinariabe entidad:lista){
                                            %>
                                            <option value='<%= entidad.getCodigo_Maqui()%>'> <%= entidad.getNombre_Maqui()%> </option>

                                            <% 
                                            }
                                            %>
                                        </select>
                                    </div>
                                    <div class="col-2">
                                            <b>Días</b>
                                    </div>
                                    <div class="col-1">
                                        <input type="text" name="" id="texDias" class="form-control"
                                               maxlength="2" >
                                    </div>
                                    <div class="col-2">
                                            <b>Cantidad</b>
                                    </div>
                                    <div class="col-1">
                                        <input type="text" name="" id="texCant" class="form-control"
                                               maxlength="2" >
                                    </div>   
                                        <div class="col-1">

                                            <button class="btn btn-outline-primary" onclick='agregarAlquiler()' >
                                                <i class="fas fa-plus"></i>
                                            </button>
                                        </div>
                                </div>

                            </div>
                 <div id="ListadoMaquina"> 

                 </div>
                    
                                
            </div>
                                        <br>
            <div style="border-style: solid; padding: 20px; border-color: #cccccc"> 
                <div class="col-12" style="text-align: left"><i><b><h3>Fecha</h3></b></i> </div>
                <div class="row">
                    <div class="col-3">
                        <b>Fecha de Inicio</b>
                    </div>
                    <div class="col-3">
                        <input type="date" class="form-control" id="FechaInicio">
                    </div>
                    <div class="col-3">
                        <b>Fecha de fin de servicios</b>
                    </div>
                    <div class="col-3">
                        <input type="date" class="form-control" id="FechaFin">
                    </div>
                </div>

            </div>
                                        
            </div>
            <div class="card-footer">
                <div>
                    <button class="btn btn-primary" onclick="AgregarAlqui()" >Generar Solicitud</button>
                </div>
                
            </div>
        </div>  
        
       
        
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>     
    </body>
    <script>
        listarCliente();
        listarMaquina();
    </script>
    
</html>
