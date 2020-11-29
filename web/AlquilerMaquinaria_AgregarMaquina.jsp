<%-- 
    Document   : AlquilerMaquinaria_AgregarMaquina
    Created on : 22/10/2020, 03:55:33 AM
    Author     : josed
--%>

<%@page import="be.suma"%>
<%@page import="java.util.List"%>
<%@page import="br.AlquilerMaquinariaPreciobr"%>
<%@page import="be.AlquilerMaquinariaPreciosbe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<meta charset="utf-8">
		<title>Ilche</title>
                <script src="jquery.js" type="text/javascript"></script> 
                <link rel="shortcut icon" href="img/LogoIlche.jpeg">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
               <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
              
	</head>
        <body>
            
            <div class="container-fluid">
                                     <br>
                                     <div class="row" style="text-align: center">
                                    
                                    <div class="col-3">
                                        <b>MAQUINA</b>
                                    </div>
                                    <div class="col-2">
                                        <b>DIAS</b>
                                    </div>
                                    <div class="col-2">
                                        <b>CANTIDAD</b>
                                    </div>
                                    <div class="col-2">
                                        <b>PRECIO</b>
                                    </div>
                                    <div class="col-2">
                                        <b>SUBTOTAL</b>
                                    </div>
                                </div>
                                     
                                     <%
                                          List<AlquilerMaquinariaPreciosbe > lista1;
                                          AlquilerMaquinariaPreciobr regla1 = new AlquilerMaquinariaPreciobr();
                                          lista1 = regla1.listarAlquilerPrecio();
                                          for (AlquilerMaquinariaPreciosbe entidad:lista1){
                                     %>
                                     <div class="table">
                                         <div class="row " style="padding: ">
                                         <div class="col-3">
                                             <input type="text" value='<%=entidad.getTipoMaquina() %>' style="" 
                                                    class="form-control" readonly="" disabled=""
                                                    >
                                         </div>
                                         <div class="col-2">
                                             <input type="text" value='<%=entidad.getDias()%>' readonly="" 
                                                    class="form-control">
                                         </div >
                                         <div class="col-2">
                                              <input type="text" value='<%=entidad.getCantidad()%>' readonly="" 
                                                    class="form-control">
                                         </div >
                                         <div class="col-2">
                                              <input type="text" value='<%=entidad.getPrecio()%>' readonly="" 
                                                    class="form-control">
                                         </div>
                                         <div class="col-2">
                                              <input type="text" value='<%=entidad.getSubtotal()%>' readonly="" 
                                                    class="form-control">
                                         </div>
                                                    <div class="col-1">
                                                        <button class="btn btn-outline-danger" onclick='eliminarAlqui(
                                                                "<%= entidad.getCodigoMaquina() %>","<%= entidad.getCodCont() %>")'><i class="fas fa-trash-alt"></i></button>            
                                        </div>
                                                    
                                     </div>
                                     </div>
                                     
                                     <%
                                         }
                                     %>
                                </div>
                                <div class="row">
                                    <div class="col-8"></div>
                                    <div class="col-1">Total</div>
                                    
                                   
                                    <div class="col-2">
                                         <% 
                                                List<suma> lista2;
                                                AlquilerMaquinariaPreciobr regla2 = new AlquilerMaquinariaPreciobr();
                                                lista2 = regla2.listasumaAlquilerMaquinaria();
                                                for (suma entidad:lista2){
                                    %>
                                    <input type="text" value='<%=entidad.getSuma()%>' readonly="" id="txtsuma"
                                                    class="form-control">
                                    
                                    <%
                                        }
                                    %>
                                    </div>
                                    <div></div>
                                    <div></div>
                                </div>
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script> 
        </body>
        
</html>
