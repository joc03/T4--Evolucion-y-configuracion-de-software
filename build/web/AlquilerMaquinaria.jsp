<%-- 
    Document   : AlquilerMaquinaria
    Created on : 22/10/2020, 12:58:15 AM
    Author     : josed
--%>

<%@page import="br.Maquinariabr"%>
<%@page import="be.Maquinariabe"%>
<%@page import="javafx.scene.control.Alert"%>
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
        function eliminarAlqui(cod,conte){
               
                datos={tcodigo:cod,tcontenido:conte};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "AlquilerMaquinaria_Eliminar.jsp",
                    success: function (response) {
                        listarMaquina();
                      
                    }
                });
            }
            
            function agregarAlquiler(){
                 cod=document.getElementById("texMaquinaria").value;
                 dias=document.getElementById("texDias").value;
                 cant=document.getElementById("texCant").value;
                 datos={tmaquina:cod,tdias:dias,tcantidad:cant};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "AlquilerMaquinaria_AgregarMaquina_Registrrar.jsp",
                    success: function (response12) {
                        listarMaquina();
                        
                    }
                });
            }
             
            function AgregarAlqui(){
                
                 ape=document.getElementById("textApellido").value;
                 dni=document.getElementById("txtcodigo").value;
                 precio=document.getElementById("txtsuma").value;
                 fechai=document.getElementById("FechaInicio").value;
                 fechaf=document.getElementById("FechaFin").value;
                 
                 if (ape.length === 0){
                     alert("Cliente no encontrado");
                 }else if (dni.length === 0){
                     alert("Cliente no encontrado");
                 }else if (precio.length === 0){
                     alert("Agregar Maquinarias");
                 }else if (fechai.length === 0){
                     alert("Agregar Fecha de inicio");
                 }else if (fechaf.length === 0){
                     alert("Agregar fecha de fin");
                 }else {
                     
                 
                 
                 datos={Tdni:dni,Tprecio:precio,TfechaIni:fechai,TfechaFin:fechaf,Tapellido:ape};
                 $.ajax({
                     data: datos,
                     type: 'POST',
                     url: "AlquilerMaquinariaRegistrar.jsp",
                     success: function (response){
                         listar();
                         alert("Registro creado");
                     }
                 });}
                 
                 
            }
          
          
           
                function listar(){
                    
                                $.ajax({
                                    type : 'POST',
                                    url: "AlquilerMaquinaria_AgregarMaquina_2.jsp",
                                    success: function (response12) {
                                        document.getElementById("listado1").innerHTML=response12;
                                    }
                                });


                    }  
                  function listarMaquina(){
                    
                                $.ajax({
                                    type : 'POST',
                                    url: "AlquilerMaquinaria_AgregarMaquina.jsp",
                                    success: function (response122) {
                                        document.getElementById("ListadoMaquina").innerHTML=response122;
                                    }
                                });


                    }  
                function listarCliente(){
                    cod=document.getElementById("txtcodigo").value;
                    datos={Tcodigo:cod};
                                $.ajax({
                                     data: datos,
                                    type : 'POST',
                                    url: "AlquilerMaquinaria_Cliente.jsp",
                                    success: function (response123) {
                                        document.getElementById("ListaCliente").innerHTML=response123;
                                    }
                                });


                }  
    </script>
    <body style="background: none; ">

    
    
        
        <div id="listado1">
            
        </div> 

        
    </body>
        <script>
        listar();
        </script> 
    
</html>
