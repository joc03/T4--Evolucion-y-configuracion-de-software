<%-- 
    Document   : TransporteMaquinaria
    Created on : 22/10/2020, 07:57:44 AM
    Author     : josed
--%>

<%@page import="br.Clientebr"%>
<%@page import="java.util.List"%>
<%@page import="be.Clientebe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <script src="jquery.js" type="text/javascript"></script>
        <link rel="shortcut icon" href="img/LogoIlche.jpeg">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
       
        
    </head>
    <script>
         function GenerarSolicitud(){
             
                dni=document.getElementById("txtdniClienteTMaq").value;
                ape=document.getElementById("textApelliTMaq").value;
                Precio=document.getElementById("textPrecioTMaq").value;
                Chofer=document.getElementById("textChofeTMaq").value;
                Fecha=document.getElementById("textFechaTMaq").value;
                alert(dni + ape + Precio+ Chofer+ Fecha );
                if (dni.length === 0){
                     alert("Ingresar dni");
                 }else if (ape.length === 0){
                     alert("Ingresar Apellido");
                 }else if (Precio.length === 0){
                     alert("no hay precio");
                 }else if (Chofer.length === 0){
                     alert("Agregar ");
                 }else if (Fecha.length === 0){
                     alert("Agregar Fecha de inicio");
                 }else {
                     
                datos={Tdni:dni,Tape:ape,Tprecio:Precio,TChofer:Chofer,TFecha:Fecha};  
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "RegistrarSolicitudTransporte.jsp",
                    success: function (response) {
                        listar();
                        
                    }
                });
            }
            }
            
            function eliminar(cod,codCont){
                alert(cod+ "gola " + codCont);
                datos={tcodigo:cod,tCodCont:codCont};                
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "TransporteMaquinaria_Eliminar.jsp",
                    success: function (response) {
                        listarDatos();
                      
                    }
                });
            }
            function agregarTransporte(){
                 vehi=document.getElementById("texVehiculo").value;
                 cod=document.getElementById("texMaquinaria").value;
                 depa=document.getElementById("txtDeparCod").value;
                 cant=document.getElementById("texCant").value;
                 datos={tVehiculo:vehi,tcodigoMaquina:cod,tDepacod:depa,tcantidad:cant};  
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "TransporteMaquinaria_Agregar_Registrar.jsp",
                    success: function (response) {
                        listarDatos();
                        
                    }
                });
            }
            function listar(){
                                $.ajax({
                                    type : 'POST',
                                    url: "TransporteMaquinaria_Principal.jsp",
                                    success: function (response12) {
                                        document.getElementById("listado1").innerHTML=response12;
                                    }
                                });
            }
            
            function listarDatos(){
                                $.ajax({
                                    type : 'POST',
                                    url: "TransporteMaquinaria_Agregar.jsp",
                                    success: function (response12) {
                                        document.getElementById("listado2").innerHTML=response12;
                                    }
                                });
            }    
    function listarCliente(){
                    cod=document.getElementById("txtdniClienteTMaq").value;
                    datos={Tcodigo:cod};
                                $.ajax({
                                     data: datos,
                                    type : 'POST',
                                    url: "TransporteMaquinariaCliente.jsp",
                                    success: function (response123) {
                                        document.getElementById("ListaCliente").innerHTML=response123;
                                    }
                                });
                } 
                    
    </script>
    <body style=" background: none;">
        
        <div id="listado1">
            
        </div>
                           
        
    </body>
    
    <script>
        listar();
        listarDatos();
    </script>
</html>

