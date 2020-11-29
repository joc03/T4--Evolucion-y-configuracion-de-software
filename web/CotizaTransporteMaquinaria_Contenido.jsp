<%-- 
    Document   : CotizaTransporteMaquinaria_Contenido
    Created on : 13/11/2020, 11:40:01 PM
    Author     : josed
--%>

<%@page import="be.suma"%>
<%@page import="br.Trabsportebr"%>
<%@page import="be.TransporteMaquinaria"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="table-responsive">
        <table class="table" style="background: black">
        <thead style="">
       <tr style="padding: 200px ;background: black; color: white">
           <th> MAQUINA </th><th style=""> DEPARTAMENTO </th><th style="width: 170px"> CANT.  </th><th> PRECIO </th><th> SUBTOTAL </th><th></th>
       </tr>
   </thead>
   <tbody>
       <%
     List<TransporteMaquinaria> lista;
     Trabsportebr regla = new Trabsportebr();
     lista = regla.listarCotizacionTransporte();

    List<suma> lista1;
    Trabsportebr regla1 = new Trabsportebr();
    lista1 = regla1.listasumaCotizacionTransporte();

 %>
       <% 

       for (TransporteMaquinaria entidad:lista){

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
                                 onclick='eliminar( "<%= entidad.getDescripcion()%>","<%= entidad.getCodcont()%>",
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
                       <input  class="form-control bg-light" disabled="" name="txtdniex" id="textSumam" type="text" value='<%= entidad.getSuma()%>' style="text-align:  right ; height: 47px"> 
               </td>
               <td class=" "> <button onclick="window.print()" class="btn btn-primary"><i class="fas fa-print"></i>Imprimir</button> </td> 

               </tr>
           <%
           }
           %>
   </tbody>
</table>
   </div>
        
    </body>
</html>
