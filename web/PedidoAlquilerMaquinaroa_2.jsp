<%-- 
    Document   : PedidoAlquilerMaquinaroa_2
    Created on : 24/11/2020, 07:03:28 PM
    Author     : josed
--%>

<%@page import="br.RegistrarServiciobr"%>
<%@page import="java.util.List"%>
<%@page import="be.RegistrarServicio"%>
<%@page import="be.ContenidoAlquilerbe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
       
        <script src="jquery.js" type="text/javascript"></script>
    </head>
    <body style="background: none">
        
        <div class="container-fluid ">
            <div class="card bg-dark">
                <div class="card-title" style="text-align:  left; color: white">
                    <b><i><h1>PEDIDOS</h1></i></b>
                </div>
                <div class="card-body">
            <%
            List<RegistrarServicio> lista;
            RegistrarServiciobr regla = new RegistrarServiciobr();
            lista = regla.listarAlquilerPrecio();
            for (RegistrarServicio entidad:lista){ 
            %> 
            <div class="card" style="width: 100%;float: left; margin: 10px;background: #ffcc20">
                <div class="card-title" style="text-align: center">
                   <div class="row">
                       <div class="col-11">
                        <b><h3>PEDIDO</h3></b>
                    </div>
                        <div class="col-1">
                            <button class="btn btn-outline-danger" style="float: right"
                                    onclick='eliminarPedido(
                                                "<%= entidad.getCodigo() %>","<%= entidad.getDni()%>")'
                                    ><i class="fas fa-times"></i></button>
                        </div> 
                    </div>
                </div>
                                    
                <div class="card-body" style="background: black; color: white">
                    <div class="row">
                        <div class="col-2">
                            <b>Cliente:</b>
                        </div>
                        <div class="col-4">
                             <input type="text" value="<%=entidad.getNombre()%>" readonly=""
                                   class="form-control">
                                                     
                        </div>
                        <div class="col-2">
                            <b>DNI:</b>
                        </div>
                        <div class="col-4">
                             <input type="text" value="<%=entidad.getDni()%>" readonly=""
                                   class="form-control">
                             <input type="text" value="<%=entidad.getCodCont()%>" name="textCodigoContenido" hidden=""
                                   class="form-control">                          
                        </div>
                    </div>
                                   <br>
                        
                    
                    <div class="row">
                        <div class="col-2">
                            <b>Fecha de inicio:</b>
                        </div>
                        <div class="col-4">
                             <input type="text" value="<%=entidad.getFechaI()%>" readonly=""
                                   class="form-control">
                        </div>
                        <div class="col-2">
                            <b>Fecha de finalización:</b>
                        </div>
                        <div class="col-4">
                             <input type="text" value="<%=entidad.getFechaF()%>" readonly=""
                                   class="form-control">
                        </div>
                    </div>
                                   <br>         
                        <div class="row" >
                        <div class="col-2">
                            <b>Tipo de Pedido</b>
                        </div>
                        <div class="col-4">
                             <input type="text" value="<%=entidad.getTipopedido()%>" readonly=""
                                   class="form-control">
                        </div>
                    </div>
                                   <br>
                          
                        
                        <div class="table" style="color: white">
                                                <table class="table table-light" border="2" style="color: black;border-radius: 10px">
                                                    <thead class="table-warning" style="text-align: center">
                                                    <th>
                                                        <div class="row">
                                                            <div class="col-2">CANT.</div>
                                                            <div class="col-6">DESCRIPCION</div>
                                                            <div class="col-2">P.UNITARIO</div>
                                                            <div class="col-2">IMPORTE</div>
                                                        </div>
                                                    </th>
                                                    </thead>
                                                    <tbody>
                                                         <% 
                                                         String codigo = entidad.getCodCont();
                                                        List<ContenidoAlquilerbe> Cont;
                                                        RegistrarServiciobr rc = new RegistrarServiciobr();
                                                        Cont = rc.ListarContenido(codigo);
                                                        for (ContenidoAlquilerbe entida:Cont){ 
                                                        %>    
                                                        <tr>
                                                            <td>
                                                             <div class="row">
                                                            <div class="col-2"> <%= entida.getCantidad() %></div>
                                                            <div class="col-6"><%= entida.getDescripcion()%> por <%=  entida.getDias()%> días</div>
                                                            <div class="col-2"><%= entida.getPrecio()%></div>
                                                            <div class="col-2"><%= entida.getSubtotal()%></div>
                                                            </div>   
                                                            </td>
                                                        </tr>
                                                        <% 
                                                        }
                                                        %> 
                                                        <tr>
                                                            <td>
                                                                <div class="row">
                                                                    <div class="col-10" style="text-align: right">
                                                                        total S/.
                                                                    </div>
                                                                    <div class="col-2">
                                                                        <input class="form-control bg-light"  name="txtcodigocli" type="textprecio" id="txtnombre" readonly=""
                                                                               value='<%= entidad.getPrecio() %>' >            
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
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
