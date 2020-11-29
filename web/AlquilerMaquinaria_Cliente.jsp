<%-- 
    Document   : AlquilerMaquinaria_Cliente
    Created on : 24/10/2020, 11:28:03 AM
    Author     : josed
--%>

<%@page import="br.Clientebr"%>
<%@page import="be.Clientebe"%>
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
             
                    <% 
                        String codigo = request.getParameter("Tcodigo");
                        List<Clientebe> lista;
                        Clientebr regla = new Clientebr();
                        String dni = regla.BuscarDNI(codigo);
                        if ( dni.compareTo(codigo) ==0){
                        lista = regla.BuscarClienteDNI(codigo);
                        for (Clientebe entidad:lista){
                    // for de cliente
                    %>
                    
                   
                    <div class="row">
                        <div class="col-2">
                            <b>Nombre</b>
                        </div>
                        <div class="col-12" >
                           
                            <input type="text" value=" <%= entidad.getApelli_cli()  %>" id="textApellido" readonly=""
                                   class="form-control" style="">
                        </div>
                       </div>
                        <div class="row">
                        
                        <div class="col-2">
                            <b>Celular</b>
                        </div>
                        <div class="col-12">
                            <input type="text" value="<%= entidad.getTelef_cli()%>" class="form-control" readonly="">
                            
                        </div>
                    </div>
       
                    
                    <%
                        }
                    }else {
%> 

                    <div class="row">
                        <div class="col-12" style="text-align: center">
                            <b><i style="color: red">Cliente no encontrado</i></b>
                        </div>
                    </div>
                    <%
}

                    %>
          
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>                                 
    </body>
</html>
