<%-- 
    Document   : CotizaTransporteMateriales_Contenido
    Created on : 14/11/2020, 07:23:14 AM
    Author     : josed
--%>

<%@page import="be.suma"%>
<%@page import="java.util.List"%>
<%@page import="br.Materialesbr"%>
<%@page import="be.TransporteMateriales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
    </head>
    <body>
       <div class="table-responsive">
        <table class="table" style="background: black">
        <thead style="">
       <tr style="padding: 200px ;background: black; color: white">
           <th> MAQUINA </th><th style="width: 150px"> DIAS </th><th style="width: 170px"> CANTIDAD  </th><th> PRECIO </th><th> SUBTOTAL </th><th></th>
       </tr>
   </thead>
   <tbody>
       <%
     List<TransporteMateriales> lista;
     Materialesbr regla = new Materialesbr();
     lista = regla.listarCotizacionTransporteMateriales();

    List<suma> lista1;
    Materialesbr regla1 = new Materialesbr();
    lista1 = regla1.listasumaCotizacionTransporteMateriales();
    for (TransporteMateriales entidad:lista){

           %> 
           <tr>
              <td > 
                   <input class="form-control bg-light" style="height: 47px" disabled="" name="txtcodigoex" type="text" value='<%= entidad.getDescripcion()%>' >                            
               </td>
               <td > 
                   <input class="form-control bg-light" style="height: 47px; text-align: center" disabled="" name="txtnombreex" type="text" value='<%= entidad.getDepartamento()%> ' > 
               </td>
               <td > 
                   <input class="form-control bg-light" style="height: 47px; text-align: center" disabled="" name="txtnombreex" type="text" value='<%= entidad.getViajes()%> ' > 
               </td>
               <td >
                   <input class="form-control bg-light" style="height: 47px; text-align: right" disabled="" name="txtapellidoex" type="text" value='S/.<%= entidad.getPrecio()%>' > 
               </td>
               <td > 
                   <input class="form-control bg-light" style="height: 47px; text-align: right" disabled="" name="txtdniex" type="text" value='S/.<%= entidad.getSubtotal()%>'> 
               </td>
               <td id=""> <input type="submit"  value="ELIMINAR" class="btn-lg   btn-outline-danger" src="img/Eliminar.png"
                                 onclick='eliminar( "<%= entidad.getDescripcion()%>","<%= entidad.getCodCont()%>",
                                             "<%= entidad.getDepartamento()%>","<%= entidad.getViajes()%>",
                          "<%= entidad.getPrecio()%>","<%= entidad.getSubtotal()%>")'> </td> 

           </tr>
       <%
       }
       %>
            <% 
           for (suma entidad:lista1){
               %> 

               <tr style="color: white; border-color: #ffcc20; border: 5px">
                   <td >  </td >
                   <td >  </td > <td >  </td ><td style="text-align: right">TOTAL S/.</td>
                   <td style="text-align: right; height: 47px"> 
                       <input  class="form-control bg-light" disabled="" id="txtdniexTM" type="text" value='<%= entidad.getSuma()%>' style="text-align:  right ; height: 47px"> 
               </td>
               <td class=" "> <button onclick="window.print()" class="btn btn-primary"><i class="fas fa-print"></i>Imprimir</button> </td> 

               </tr>
           <%
           }
           %>
   </tbody>
</table>
   </div>
        
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>   
    </body>
</html>
