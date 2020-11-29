<%-- 
    Document   : CotizaAlquilerMaquinaria_Contenido
    Created on : 13/11/2020, 04:35:01 PM
    Author     : josed
--%>

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
       <div class="table-responsive">
            <table class="table" style="background: black">
            <thead style="">
           <tr style="padding: 200px ;background: black; color: white">
               <th> MAQUINA </th><th style="width: 150px"> DIAS </th><th style="width: 170px"> CANTIDAD  </th><th> PRECIO </th><th> SUBTOTAL </th><th></th>
           </tr>
       </thead>
       <tbody>
           <%
         List<Alquilermaquinaria> lista;
         Alquilermabr reglaAlqui = new Alquilermabr();
         lista = reglaAlqui.listarCliente();

        List<suma> lista1;
        Alquilermabr regla1 = new Alquilermabr();
        lista1 = regla1.listasuma();

     %>
           <% 

           for (Alquilermaquinaria entidad:lista){

               %> 
               <tr>
                  <td > 
                       <input class="form-control bg-light" style="height: 47px" disabled="" name="txtcodigoex" type="text" value='<%= entidad.getMaquina()%>' >                            
                   </td>
                   <td > 
                       <input class="form-control bg-light" style="height: 47px; text-align: center" disabled="" name="txtnombreex" type="text" value='<%= entidad.getDias()%> ' > 
                   </td>
                   <td > 
                       <input class="form-control bg-light" style="height: 47px; text-align: center" disabled="" name="txtnombreex" type="text" value='<%= entidad.getCantidad()%> ' > 
                   </td>
                   <td >
                       <input class="form-control bg-light" style="height: 47px; text-align: right" disabled="" name="txtapellidoex" type="text" value='S/.<%= entidad.getPrecio()%>' > 
                   </td>
                   <td > 
                       <input class="form-control bg-light" style="height: 47px; text-align: right" disabled="" name="txtdniex" type="text" value='S/.<%= entidad.getSubtotal()%>'> 
                   </td>
                   <td id=""> <button  type="button" class="btn-lg   btn-outline-danger imprimir" src="img/Eliminar.png"
                                     style=""
                                     onclick='eliminar( "<%= entidad.getMaquina()%>","<%= entidad.getCodCont()%>",
                                                 "<%= entidad.getDias()%>","<%= entidad.getCantidad()%>",
                                                 "<%= entidad.getPrecio()%>","<%= entidad.getSubtotal()%>")'>ELIMINAR </button> </td> 

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
                           <input  class="form-control bg-light" disabled="" name="textSuma" id="textSuma" type="text" value='<%= entidad.getSuma()%>' style="text-align:  right ; height: 47px"> 
                   </td>
                   <td class=" "> <button style=" "   onclick="window.print()" class="btn btn-primary imprimir"><i class="fas fa-print"></i>Imprimir</button> </td> 


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
