<%-- 
    Document   : CotizaAlquilerMaquinaria_2
    Created on : 09/10/2020, 05:41:26 PM
    Author     : josed
--%>

<%@page import="br.Maquinariabr"%>
<%@page import="be.Maquinariabe"%>
<%@page import="be.suma"%>
<%@page import="br.Alquilermabr"%>
<%@page import="java.util.List"%>
<%@page import="be.Alquilermaquinaria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        <script src="js/CotizaciónAlquiler.js" type="text/javascript"></script>
    </head>
    <style >
        
        @media print{
            .imprimir{
                display: none;
            }
        }
    </style>
    <body>
       
        
        <div class="card" style="background: black; color:white ">
            <div class="card-header " style="background:#ffcc20; color: white"> 
                <div style="float: left"> <h2><i class="fas fa-edit imprimir">Nueva Cotización</i> </h2> </div> 
                <div style="float: right"><h2>ALQUILER DE MAQUINARIAS </h2> </div>
            </div>
            <div class="card-body" style="color: white">
                                        <div class="table-responsive">
                                            <table class="table" style="color: white; background: black">
                                            <tr class="">
                                                <td class=""><b>Atención</b></td> 
                                                <td> <input class="form-control" type="text" name="textAtencion" id="textAtencion"> </td>
                                                <td class=""><b>Telefono</b></td> 
                                                <td> <input class="form-control" type="text" name="textTelefonoAte" id="textTelefonoAte"> </td>
                                                <td></td> <td></td>
                                            </tr>
                                            <tr>
                                               <td class=""><b>Cliente</b></td> 
                                                <td> <input class="form-control" type="text" name="textCliente" id="textCliente"> </td>
                                                <td class=""><b>Telefono</b></td> 
                                                <td> <input class="form-control" type="text" name="textTelefono" id="textTelefono"> </td>
                                                <td class=""><b>Email</b></td> 
                                                <td> <input class="form-control" type="text" name="textEmail" id="textEmail"> </td>
                                            </tr>
                                            </table>
                                        </div>
                                        
                                        <div >
                                            <table class="table imprimir" style="color: white">
                                                <tr ><td class="" ><b style="font-size: 20px; font-style: inherit; color: white">MAQUINARIAS</b></td> <td></td><td></td><td></td><td></td><td></td><td></td></tr>                                            
                                            <tr class="">
                                                <td class="" ><b>Maquinarias</b></td> 
                                                <td> 
                                                    <select name="textmaquina" id="txtmaquina" class="form-control" style="width: 100%">
                                                                <% 
                                                                List<Maquinariabe> listaMA;
                                                                Maquinariabr regla = new Maquinariabr();
                                                                listaMA = regla.listarCliente();
                                                                 for (Maquinariabe entidad:listaMA){
                                                                %>
                                                                <option value='<%= entidad.getCodigo_Maqui()%>'> <%= entidad.getNombre_Maqui()%> </option>

                                                                <% 
                                                                }
                                                                %>
                                                    </select>
                                                </td>
                                                <td class=""><b>Cantidad</b></td> 
                                               <td> <select class="form-control" name="textcantidad" id="txtcantidad" style="">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                    </select> 
                                                </td>
                                                <td class=""><b>Días</b></td> 
                                                <td> <select class="form-control" name="textdias" id="txtdias" style="">
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
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                    </select> 
                                                </td>
                                                <td class=" "> <button type="button" onclick='agregar()' class="btn btn-outline-info"><i class="fas fa-plus"></i>Agregar</button> </td> 
                                            </tr>
                                           
                                            </table>
                                        </div>
                                        <div class="Contenido" id="Contenido">
                                                    
                                               </div>
                                      

                                    </div>
                                </div>
                                               <br>
                                               
                                               <div>
                                                   <button class="btn btn-primary btn-block imprimir" type="button" onclick='validar()'>Guardar Cotización</button>
                                               </div>
      
       
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
    <script>
        Contenido();
    </script>
</html>
