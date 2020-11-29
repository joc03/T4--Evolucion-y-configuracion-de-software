<%-- 
    Document   : hom_2
    Created on : 31/10/2020, 06:11:09 PM
    Author     : josed
--%>

<%@page import="be.ContenidoAlquilerbe"%>
<%@page import="be.RegistrarAlquiler"%>
<%@page import="br.RegistrarServiciobr"%>
<%@page import="java.util.List"%>
<%@page import="be.RegistrarServicio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        <script src="js/home.js" type="text/javascript"></script>
        <script src="jquery.js" type="text/javascript"></script>
    </head>
    <body style="background: none">
        
        <div class="container-fluid ">
            <div class="card bg-dark">
                <div class="card-title" style="text-align: center;color: white">
                    <b><i><h1>PEDIDOS</h1></i></b>
                </div>
                <div class="card-body">
            <%
            List<RegistrarServicio> lista;
            RegistrarServiciobr regla = new RegistrarServiciobr();
            lista = regla.listarAlquilerPrecio();
            for (RegistrarServicio entidad:lista){ 
            %> 
            <div class="card" style="width: 31%;float: left; margin: 10px;background: #ffcc20">
                <div class="card-title" style="text-align: center">
                   <div class="row">
                       <div class="col-10">
                        <b><h3>PEDIDO</h3></b>
                    </div>
                        <div class="col-2">
                            <button class="btn btn-outline-danger" style="width: 100%; height: 100%"
                                    onclick='eliminarPedido(
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
                            <%=entidad.getNombre()%>                            
                        </div>
                    </div>
                        <div class="row">
                        <div class="col-6">
                            <b>DNI:</b>
                        </div>
                        <div class="col-6">
                            <%=entidad.getDni()%>                            
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
                            <%=entidad.getFechaI()%>
                        </div>
                    </div>    
                    <div class="row" >
                        <div class="col-6">
                            <b>Fecha de finalización:</b>
                        </div>
                        <div class="col-6">
                            <%=entidad.getFechaF()%>
                        </div>
                    </div> 
                        <div class="row" >
                        <div class="col-6">
                            <b>Tipo de Pedido</b>
                        </div>
                        <div class="col-6">
                            <%=entidad.getTipopedido()%>
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
                                <div class="col-6" style="text-align: center">
                                    <button class="btn btn-primary" onclick='GenerarBoleta("<%= entidad.getDni()%>",
                                                "<%= entidad.getNombre()%>","<%= entidad.getPrecio()%>","<%= entidad.getCodCont()%>",
                                                "<%= entidad.getFechaI()%>","<%= entidad.getFechaF()%>",
                                                "<%= entidad.getTipopedido()%>")'>GENERAR BOLETA</button>
                                </div>
                                <div class="col-6" style="text-align: center">
                                    <a href="home_Guia.jsp"><button class="btn btn-danger" onclick='' >GUIA DE REMISIÓN</button></a>
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
