<%-- 
    Document   : home_contenido
    Created on : 03/11/2020, 01:45:17 PM
    Author     : josed
--%>

<%@page import="br.RegistrarServiciobr"%>
<%@page import="be.ContenidoAlquilerbe"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
    <body>
        
        
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
                
                String cod = request.getParameter("TcodCont");
                List<ContenidoAlquilerbe> Cont;
                RegistrarServiciobr rc = new RegistrarServiciobr();
                Cont = rc.ListarContenido(cod);
                for (ContenidoAlquilerbe entida:Cont){
                %>
            <tr>

                <td>
                    <div class="row" >

                <div class="col-2" id=""><%=cod %> <%= entida.getCantidad() %></div>
                <div class="col-6"><%= entida.getDescripcion()%></div>
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
                            total
                        </div>
                        <div class="col-2">
                <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtPrecioGB">            
                        </div>
                    </div>
                </td>
            </tr>

        </tbody>
    </table>

</div>
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>
