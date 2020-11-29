<%-- 
    Document   : hom_1
    Created on : 31/10/2020, 09:51:08 AM
    Author     : josed
--%>

<%@page import="br.RegistrarServiciobr"%>
<%@page import="be.ContenidoAlquilerbe"%>
<%@page import="java.util.List"%>
<%@page import="br.AlquilerMaquinariaPreciobr"%>
<%@page import="be.RegistrarAlquiler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        <script src="js/home.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
    </head>
    <body style="background: none">
        
        <div class="container-fluid ">
            <div class="card bg-dark">
                <div class="card-title" style="text-align: center;color: white">
                    <b><i><h1>SOLICITUDES</h1></i></b>
                    
                </div>
                <div class="card-body">
            <%
            List<RegistrarAlquiler> lista;
            AlquilerMaquinariaPreciobr regla = new AlquilerMaquinariaPreciobr();
            lista = regla.listarAlquiler();
            for (RegistrarAlquiler entidad:lista){ 
            %> 
            <div class="card" style="width: 31%;float: left; margin: 10px;background: #ffcc20">
                <div class="card-title" style="text-align: left">
                    
                    <div class="row">
                       <div class="col-10">
                        <b><h3>ALQUILER DE MAQUINARIA</h3></b>
                    </div>
                        <div class="col-2">
                            <button class="btn btn-outline-danger" style="width: 100%; height: 100%"
                                    onclick='eliminarAlquiler(
                                                "<%= entidad.getCodigo() %>","<%= entidad.getDni()%>")'
                                    ><i class="fas fa-times"></i></button>
                        </div> 
                    </div>
                    
                    
                   
                </div>
                <div class="card-body" style="background: black; color: white">
                    <div class="row">
                        <div class="col-6">
                            <b>Cliente:</b>
                        </div>
                        <div class="col-6">
                            <%=entidad.getApellido()%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <b>Precio:</b>
                        </div>
                        <div class="col-6" >
                           S/. <%=entidad.getPrecio()%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <b>Fecha de inicio:</b>
                        </div>
                        <div class="col-6">
                            <%=entidad.getFechaInicio()%>
                        </div>
                    </div>    
                    <div class="row" >
                        <div class="col-6">
                            <b>Fecha de finalización:</b>
                        </div>
                        <div class="col-6">
                            <%=entidad.getFechaFin()%>
                        </div>
                    </div> 
                        
                        <div>
                            <div class="row">
                                <div>
                                    
                                </div>
                                Descripción: 
                            </div>
                            <% 
                            String codigo = entidad.getCodCont();
                            List<ContenidoAlquilerbe> Cont;
                            RegistrarServiciobr rc = new RegistrarServiciobr();
                            Cont = rc.ListarContenido(codigo);
                            for (ContenidoAlquilerbe entida:Cont){ 
                              
                            
                            %>
                        <div class="row" >
                           
                            <%= entida.getDescripcion() %>
                        </div>
                        <% 
                        }
                        %>
                        </div>    
                </div>
                        <div class="card-footer" style="background: #ffcc20">
                            <div class="row">
                                <div class="col-12" style="text-align: center">
                                    <button class="btn btn-primary" onclick='AgregarPedido(
                                                "<%= entidad.getDni()%>","<%= entidad.getCodCont()%>","<%= entidad.getApellido()%>",
                                                "<%= entidad.getPrecio()%>",
                                                "<%= entidad.getFechaInicio()%>","<%= entidad.getFechaFin()%>")'>GENERAR PEDIDO</button>
                                </div>
                                
                            </div>
                        </div>
            </div>
               
            
            <%
            }

            %> 
                </div>
            </div>
            
        </div>
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>
