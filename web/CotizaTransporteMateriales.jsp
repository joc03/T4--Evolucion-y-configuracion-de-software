<%-- 
    Document   : CotizaTransporteMateriales
    Created on : 13/10/2020, 05:55:36 AM
    Author     : josed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title>Ilche</title>
                <script src="jquery.js" type="text/javascript"></script> 
                <link rel="shortcut icon" href="img/LogoIlche.jpeg">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
                <link href="EstilosMenú.css" rel="stylesheet" type="text/css"/>
                <script src="js/CotizacionMateriales.js" type="text/javascript"></script>
	</head>
        <script>
            function validarCotizaTrnasMate(){
                Aten=document.getElementById("textAtenTMa").value;
                TeleAten=document.getElementById("textTeleAtenc").value;
                Cliente=document.getElementById("textClienTMa").value;
                TeleClie=document.getElementById("textTelefonoClieTMa").value;
                EmaiCli=document.getElementById("textEmailTM").value;
                suma=document.getElementById("txtdniexTM").value;
                alert(Aten +TeleAten+ Cliente + TeleClie + EmaiCli + suma);
                if(Aten.length === 0){
                    alert("Ingrese nombre de Atención");
                }else if(TeleAten.length === 0){
                    alert("Ingrese telefono de Atención");
                }else if(Cliente.length === 0){
                    alert("Ingrese nombre de cliente");
                }else if(TeleClie.length === 0){
                    alert("Ingrese telefono de cliente");
                }else if(EmaiCli.length === 0){
                    alert("Ingrese correo de cliente");
                }else if(suma.length === 0){
                    alert("Ingrese minimo una maquinaria");
                }else {
                datos={tAtenm:Aten,tTelem:TeleAten,tClientem:Cliente,tTeleClie:TeleClie,tEmailM:EmaiCli,tSumam:suma};                
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "CotizaTransporteMaterialesRegistra.jsp",
                    success: function (response) {
                        listar();
                        listarCotiContenidoTrnasporteMateriales();
                        alert("Cotización Guardada");
                       
                    }
                });
                 }
            }
            function eliminar(des,codcont,depar,viajes,pre,subto){
                datos={tdescripcion:des,Tcodcont:codcont,tdepartamento:depar,tviajes:viajes,tprecio:pre,tsubto:subto};                
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "EliminarCotizacionTransporteMateriales.jsp",
                    success: function (response) {
                        listarCotiContenidoTrnasporteMateriales();
                      
                    }
                });
            }
            function agregar(){
                
                 des=document.getElementById("txtdescripcion").value;
                 depar=document.getElementById("txtdepartamento").value;
                 viajes=document.getElementById("txtviajes").value;
                 datos={tdescripcion:des,tdepartamento:depar,tviajes:viajes};  
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "RegistrarCotizacionTransporteMateriales.jsp",
                    success: function (response) {
                        listarCotiContenidoTrnasporteMateriales();
                        
                    }
                });
            }
            
                function listar(){
                                $.ajax({
                                    type : 'POST',
                                    url: "CotizaTransporteMateriales_2.jsp",
                                    success: function (response12) {
                                        document.getElementById("listado1").innerHTML=response12;
                                    }
                                });


                    }  
                    function listarCotiContenidoTrnasporteMateriales(){
                                $.ajax({
                                    type : 'POST',
                                    url: "CotizaTransporteMateriales_Contenido.jsp",
                                    success: function (response12) {
                                        document.getElementById("ListadoContenido").innerHTML=response12;
                                    }
                                });


                    } 

        </script>
        <body style=" background: none; 
          ">
          <div id="listado1"></div>
	</body>
    <script>
    listar();
    </script>
</html>
