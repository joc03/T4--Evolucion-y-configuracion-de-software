<%-- 
    Document   : TransporteMaquinaria_Agregar
    Created on : 22/10/2020, 08:12:24 AM
    Author     : josed
--%>

<%@page import="java.util.List"%>
<%@page import="be.TransporteMaquinariaPreciobe"%>
<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<meta charset="utf-8">
		<title>Ilche</title>
                <script src="jquery.js" type="text/javascript"></script> 
                <link rel="shortcut icon" href="img/LogoIlche.jpeg">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
                <link href="EstilosMenú.css" rel="stylesheet" type="text/css"/>
                <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
	</head>
        
      
        <body>
            
           <div class="container-fluid">
                                     <br>
                                     <div class="row" style="text-align: center">
                                    <div class="col-2">
                                        <b>VEHICULO</b>
                                    </div>
                                    <div class="col-2">
                                        <b>MAQUINA</b>
                                    </div>
                                    <div class="col-2">
                                        <b>DEPARTAMENTO</b>
                                    </div>
                                    <div class="col-1">
                                        <b>CANT.</b>
                                    </div>
                                    <div class="col-2">
                                        <b>PRECIO</b>
                                    </div>
                                    <div class="col-2">
                                        <b>SUBTOTAL</b>
                                    </div>
                                </div>
                                     
                                     <%
                                          List<TransporteMaquinariaPreciobe > lista2;
                                          TransporteMaquinariaPreciobr regla2 = new TransporteMaquinariaPreciobr();
                                          lista2 = regla2.listarTransporteMaquinaria();
                                          for (TransporteMaquinariaPreciobe entidad:lista2){
                                     %>
                                     <div class="table">
                                         <div class="row " style="padding: ">
                                             <div class="col-2">
                                             <input type="text" value='<%=entidad.getPlacaVehiculo()%>' style="" 
                                                    class="form-control" readonly="" disabled=""
                                                    >
                                         </div>
                                         <div class="col-2">
                                             <input type="text" value='<%=entidad.getMaquina()%>' style="" 
                                                    class="form-control" readonly="" disabled=""
                                                    >
                                         </div>
                                         <div class="col-2">
                                             <input type="text" value='<%=entidad.getDepartamento()%>' readonly="" 
                                                    class="form-control">
                                         </div >
                                         <div class="col-1">
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
                                                    <div class="1">
                                                        <button class="btn btn-outline-danger" onclick='eliminar("<%=entidad.getCodigo()%>","<%=entidad.getCodCont()%>"
                                                                    )'><i class="fas fa-trash-alt"></i></button>            
                                        </div>
                                                    
                                     </div>
                                     </div>
                                     
                                     <%
                                         }
                                     %>
                                </div>
                                <div class="container-fluid">
                                <div class="row">
                                    <div class="col-7"></div>
                                    <div class="col-2">Total</div>
                                    
                                   
                                    <div class="col-2">
                                         <% 
                                              
                                                TransporteMaquinariaPreciobr regla3 = new TransporteMaquinariaPreciobr();
                                                 float precioTransporte =  regla2.listasumaTransporteMaquinaria();
                                                
                                    %>
                                    <input type="text" value='<%= precioTransporte%>' readonly="" id="textPrecioTMaq" 
                                                    class="form-control">
                                    
                                    <
                                    </div>
                                    
                                    
                                </div>
                             </div> 
            
            
            
            
            
            
            
           
            
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>         
        </body>
        
       
</html>

