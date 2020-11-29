<%-- 
    Document   : CotizaAlquilerMaquinaria
    Created on : 09/10/2020, 04:09:15 PM
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
                <script src="js/CotizaciónAlquiler.js" type="text/javascript"></script>
	</head>
        <script>
            function validar(){
                aten=document.getElementById("textAtencion").value;
                tele=document.getElementById("textTelefonoAte").value;
                Cliente=document.getElementById("textCliente").value;
                teleClie=document.getElementById("textTelefono").value;
                TeleEmai=document.getElementById("textEmail").value;
                suma=document.getElementById("textSuma").value;
                
                alert("o"+aten +"te "+tele +"cli"+Cliente +"teckli"+teleClie +"teem"+TeleEmai +"suma"+suma);
                datos={tAtencion:aten,tTelefonoAte:tele,tCliente:Cliente,tTelefono:teleClie,tEmail:TeleEmai,tSuma:suma};  
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "CotizaAlquilerRegistra.jsp",
                    success: function (response) {
                        listar();
                        Contenido();
                        
                    }
                });
            }
            
            function eliminar(maq,codcont,dias,cant,pre,subto){
               
                datos={tmaquinaria:maq,tcodcont:codcont,tdias:dias,tcantidad:cant,tprecio:pre,tsubto:subto};                
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "EliminarCotizacionAlquiler.jsp",
                    success: function (response) {
                        Contenido();
                       
                    }
                });
            }
            function agregar(){
                 maq=document.getElementById("txtmaquina").value;
                 cant=document.getElementById("txtcantidad").value;
                 dias=document.getElementById("txtdias").value;
                 datos={tmaquina:maq,tcantidad:cant,tdias:dias};  
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "RegistrarCotizacionAlquiles.jsp",
                    success: function (response) {
                        Contenido();
                        
                    }
                });
            }
                
          
          
           
                function listar(){
                                $.ajax({
                                    type : 'POST',
                                    url: "CotizaAlquilerMaquinaria_2.jsp",
                                    success: function (response12) {
                                        document.getElementById("listado1").innerHTML=response12;
                                    }
                                });


                    } 
                    function Contenido(){
                                $.ajax({
                                    type : 'POST',
                                    url: "CotizaAlquilerMaquinaria_Contenido.jsp",
                                    success: function (response1) {
                                        document.getElementById("Contenido").innerHTML=response1;
                                    }
                                });


                    }
        </script>
        <body style=" background:none ; 
          ">
            <div id="listado1"></div>
                 
	</body>
    <script>
    listar();
    </script>
</html>
