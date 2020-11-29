<%-- 
    Document   : BuscarMaquinaria_2
    Created on : 09/10/2020, 03:08:56 PM
    Author     : josed
--%>

<%@page import="br.Maquinariabr"%>
<%@page import="java.util.List"%>
<%@page import="be.Maquinariabe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script>              
           
        </script> 
        
    </head>
    <body>
        
          <%   
              String codigo = request.getParameter("txtcodigo");
              List<Maquinariabe> lista;
              Maquinariabr regla = new Maquinariabr();
              lista = regla.BuscarMaquinaria(codigo);
              
          %>
       <div class="container" style="float: left; width: 100%"> 
           <form action="BuscarMaquinaria.jsp" method="post">
               <div class="card mb-3" style="background: black">
         
             <table class="border-warning" style="background: black;">
            <thead>
                
            </thead>
            <tbody style="color: white">
              
                <% 
                
                for (Maquinariabe entidad:lista){
                    
                    %> 
                    <tr>
                        <td>CODIGO</td>
                        <td><input class="form-control bg-light" disabled="" name="txtcodigoex" type="text" value='<%= entidad.getCodigo_Maqui()%>'></td> 
                    </tr>
                    <tr>
                        <td>TIPO DE MAQUINARIA</td>
                        <td> 
                            <input class="form-control bg-light" disabled="" name="txtnombreex" type="text" value='<%= entidad.getNombre_Maqui()%> ' > 
                        </td>
                    </tr>
                    <tr>
                        <td>CANTIDAD</td>
                        <td>
                            <input class="form-control bg-light" disabled="" name="txtapellidoex" type="text" value='<%= entidad.getCanti_Maqui()%>' > 
                        </td>
                    </tr>
                    <tr>
                        <td>PRECIO DE ALQUILER (DÍA)</td>
                         <td> 
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getPrecio_Maqui()%>'> 
                        </td>
                    </tr>
                    <tr>
                        <td>PESO(T)</td>
                         <td> 
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getPeso_Maqui()%>'> 
                        </td>
                    </tr>
                    <tr>
                        <td>DIMENCIONES</td>
                        <td> 
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getDimensio_Maqui()%>'> 
                        </td>
                    </tr>
                   
                <%
                }
                %>
            </tbody>
        </table>
        </div>
           
        </form>
        </div>
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>    
    </body>   
</html>

