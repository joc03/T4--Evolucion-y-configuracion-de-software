<%-- 
    Document   : SolicitudAlquilerMaquinaria
    Created on : 24/11/2020, 05:55:54 PM
    Author     : josed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery.js" type="text/javascript"></script>
    </head>
    <script>
        function listar(){
            $.ajax({
                type: 'POST',
                url: "SolicitudAlquilerMaquinaria_2.jsp",
                success: function (response) {
                    document.getElementById("listado").innerHTML=response;
                }
            });
        }
        
        function eliminarAlquiler(cod,ape){ 
                
                var r = confirm("Está seguro de eliminar la solicitud  de " + ape );
                datos={tcodigo:cod};
                if(r === true){
                    $.ajax({
                        data: datos,
                        type: 'POST',
                        url: "EliminarAlquiler.jsp",
                        success: function (response) {
                            listar();
                            
                        }
                    });
                }                
            }
            function AgregarPedidoALquilerMaquinaria(cod,dni,codco,ape,pre,fechI,fechF){
            alert(cod);
            datos={Tcod:cod,tcodigo:dni,tCodCont:codco,Tapellido:ape,Tprecio:pre,TfechaI:fechI,TfechaF:fechF};    
              
                    $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "home_RegistrarPedido.jsp",
                    success: function (response) {
                        alert("El pedido ha sido registrado");
                        listar();
                    }
                });
                            
            }
            
    </script>
    <body style="background: none">
        <div id="listado"></div>
    </body>
    <script>
        listar();
    </script>
</html>
