<%-- 
    Document   : PedidoTransporteMaquinaria_2
    Created on : 24/11/2020, 01:30:10 PM
    Author     : josed
--%>

<%@page import="br.Choferesbr"%>
<%@page import="be.Choferesbe"%>
<%@page import="be.ContenidoTransportebe"%>
<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page import="java.util.List"%>
<%@page import="be.PedidoTransporteMaquinaria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="img/LogoIlche.jpeg">
        <script src="jquery.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
    </head>
    <body>
        
        <div class="container-fluid ">
            <div class="card bg-dark">
                <div class="card-title" style="text-align: center;color: white">
                    <b><i><h1>PEDIDOS</h1></i></b>
                    
                </div>
                <div class="card-body">
            <%
            List<PedidoTransporteMaquinaria> lista;
            TransporteMaquinariaPreciobr regla = new TransporteMaquinariaPreciobr();
            lista = regla.listarPedidoTransporteMaquinaroa();
            for (PedidoTransporteMaquinaria entidad:lista){ 
            %>
            <form action="BoletaTransporteMaquinaria.jsp">
                
            <div class="card" style="width: 100%; background: #ffcc20">
                <div class="card-title" style="text-align: left">
                    
                    <div class="row">
                    <div class="col-11">
                        <b><h3>PEDIDO N°  <%= entidad.getCodigo() %></h3></b>
                    </div>
                        <div class="col-1">
                            <button class="btn btn-outline-danger" style=" float: right" type="button"
                                    onclick='eliminarPedidoTransporteMaquinaria(
                                                "<%= entidad.getCodigo() %>","<%= entidad.getApellido()%>" )'
                                    ><i class="fas fa-times"></i></button>
                        </div> 
                    </div>
                    
                    
                 
                </div>
                <div class="card-body" style="background: black; color: white">
                    <div class="row">
                        <div class="col-1">
                            <b>Cliente:</b>
                        </div>
                        <div class="col-4">
                            <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtdni" readonly=""
                                   value=" <%=entidad.getApellido()%>">
                           
                        </div>
                        <div class="col-3">
                            <b>Fecha de transporte</b>
                        </div>
                        <div class="col-4" >
                            <input class="form-control bg-light"  name="txtcodigocli" type="date" id="txtdni" readonly=""
                                   value="<%=entidad.getFecha()%>">
                            <input type="text" value="<%=entidad.getCodcont() %>" hidden="" name="textCodigoContenido">
                        </div>           
                    </div>
                    
                     <br>   
                        <div>
                            <div class="row">
                                  <!-- tabla de contenido -->
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
                                                        String codigo = entidad.getCodcont();
                                                        List<ContenidoTransportebe> Cont;
                                                        TransporteMaquinariaPreciobr rc = new TransporteMaquinariaPreciobr();
                                                        Cont = rc.listarContenidoTransporteMaquinaria(codigo);
                                                        for (ContenidoTransportebe entida:Cont){
                                                        %>    
                                                        <tr>
                                                            <td>
                                                             <div class="row">
                                                            <div class="col-2"> <%= entida.getCantidad() %></div>
                                                            <div class="col-6"><%= entida.getMaquina()%> Transportado: <%= entida.getVehiculo()%> - <%= entida.getDepa()%></div>
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
                            
                        
                        </div> 
                        <div class="row" >
                            <% 
                            String codigoChofer = entidad.getChofer();
                            List<Choferesbe> Chofer;
                            Choferesbr chof = new Choferesbr();
                            Chofer = chof.BuscarChofer(codigoChofer);
                            for (Choferesbe entida:Chofer){ 
                            
                                %>
                        <div class="col-3">
                            <b>CHOFER DE TRANSPORTE</b>
                        </div>
                        <div class="col-4">
                            
                                <%= entida.getNombre() %> <%= entida.getApellido()%>
                          </div>       
                        <div class="col-2">
                            <b>DNI</b>
                        </div>
                        <div class="col-3">
                            
                               <%= entida.getDni()%>
                          </div>         
                                
                                
                                <%
                            }
                            %>
                            
                       
                    </div> 
                </div>
                        <div class="card-footer" style="background: #ffcc20">
                            <div class="row">
                                <div class="col-12" style="text-align: center">
                                    <button class="btn btn-primary" type="submit"
                                            onclick='GenerarBoletaTransporteMaquinaria( "<%= entidad.getCodigo()%>",
                                                "<%= entidad.getDni()%>","<%= entidad.getCodcont()%>","<%= entidad.getApellido()%>",
                                                "<%= entidad.getPrecio()%>",
                                                "<%= entidad.getFecha()%>","<%= entidad.getChofer()%>")'>GENERAR BOLETA</button>
                                </div>
                                
                            </div>
                        </div>
            </div>
               </form>
                                <br>
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
