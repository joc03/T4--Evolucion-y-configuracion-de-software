<%-- 
    Document   : CotizaTransporteMateriales_2
    Created on : 13/10/2020, 05:55:50 AM
    Author     : josed
--%>

<%@page import="br.Departamentobr"%>
<%@page import="be.Departamentobe"%>
<%@page import="be.suma"%>
<%@page import="br.Materialesbr"%>
<%@page import="be.TransporteMateriales"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
    </head>
    <body>
        
        <div class="card" style="background: black; color:white ">
            <div class="card-header " style="background:#ffcc20; color: white"> 
                <div style="float: left"> <h2><i class="fas fa-edit">Nueva Cotización</i> </h2> </div> 
                <div style="float: right"><h2>TRANSPORTE DE MATERIALES </h2> </div>
            </div>
            <div class="card-body" style="color: white">
                                        <div class="table-responsive">
                                            <table class="table" style="color: white; background: black">
                                            <tr class="">
                                                <td class=""><b>Atención</b></td> 
                                                <td> <input class="form-control" type="text"  id="textAtenTMa"> </td>
                                                <td class=""><b>Telefono</b></td> 
                                                <td> <input class="form-control" type="text" name="" id="textTeleAtenc"> </td>
                                                <td></td> <td></td>
                                            </tr>
                                            <tr>
                                               <td class=""><b>Cliente</b></td> 
                                                <td> <input class="form-control" type="text" id="textClienTMa"> </td>
                                                <td class=""><b>Telefono</b></td> 
                                                <td> <input class="form-control" type="text"  id="textTelefonoClieTMa"> </td>
                                                <td class=""><b>Email</b></td> 
                                                <td> <input class="form-control" type="text"  id="textEmailTM"> </td>
                                            </tr>
                                            </table>
                                        </div>
                                        
                                        <div >
                                            <table class="table" style="color: white">
                                                <tr ><td class="" ><b style="font-size: 20px; font-style: inherit; color: white"> SERVICIOS</b></td> <td></td><td></td><td></td><td></td><td></td><td></td></tr>                                            
                                            <tr class="">
                                                <td class="" ><b>DESCRIPCIÓN</b></td> 
                                                <td> 
                                                       <select class="form-control" name="textmaquina" id="txtdescripcion" style="">
                                                        <option value="ARENA">ARENA</option>
                                                        <option value="PIEDRA">PIEDRA</option>
                                                        <option value="ARENILLA">ARENILLA</option>
                                                        <option value="CEMENTO">CEMENTO</option>
                                                        <option value="FIERROS">FIERROS</option>
                                                       
                                                        
                                                    </select>  
                                                </td>
                                                <td class=""><b>DEPARTAMENTO</b></td> 
                                               <td> <select class="form-control" name="textcantidad" id="txtdepartamento" style="">
                                                       <%
                                                        List<Departamentobe> listaDepa;
                                                        Departamentobr reglaDepa = new Departamentobr();
                                                        listaDepa = reglaDepa.listarCliente();
                                                         for (Departamentobe entidad:listaDepa){
                                                        %>
                                                        <option value='<%=entidad.getCodigo()%>'><%= entidad.getDepartamento() %></option>
                                                        <% 
                                                            }
                                                        %>
                                                    </select> 
                                                </td>
                                                <td class=""><b>CANT.</b></td> 
                                                <td> <select class="form-control" name="textdias" id="txtviajes" style="">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        
                                                    </select> 
                                                </td>
                                                <td class=" "> <button onclick='agregar()' class="btn btn-outline-info"><i class="fas fa-plus"></i>Agregar</button> </td> 
                                            </tr>
                                           
                                            </table>
                                        </div>
                                                    <div class="" id="ListadoContenido">
                                        
                                        </div>
                                      

                                    </div>
        </div> <br>
        <button type="button" class="btn btn-primary btn-block" onclick='validarCotizaTrnasMate()'>Guardar Cotización</button>
        
       
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
    <script>
        listarCotiContenidoTrnasporteMateriales();
    </script>
</html>
