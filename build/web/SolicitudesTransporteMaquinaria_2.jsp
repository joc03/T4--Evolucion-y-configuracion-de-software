<%-- 
    Document   : PedidosTransporteMaquinaria_2
    Created on : 24/11/2020, 06:50:30 AM
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
                                    type : 'POST',
                                    url: "SolicitudesTransporteMaquinaria.jsp",
                                    success: function (response) {
                                        document.getElementById("Solicitudes").innerHTML=response;
                                    }
                                    
                                });
            }
            
        function AgregarPedidoTMaq(cod,dni,codco,ape,pre,fech,chofer){
        datos={tcod:cod,tcodigo:dni,tCodCont:codco,Tapellido:ape,Tprecio:pre,Tfecha:fech,Tchofer:chofer};
                        $.ajax({
                        data: datos,
                        type: 'POST',
                        url: "RegistrarPedidoTransporteMaquinaria.jsp",
                        success: function (response) {
                            listar();
                           

                        }
                    });

                }
        function eliminarSolicitudTransporteMaquinaria(cod,ape){ 

                        var r = confirm("Está seguro de eliminar la solicitud  de " + ape );
                        datos={tcodigo:cod};
                        if(r === true){
                            $.ajax({
                                data: datos,
                                type: 'POST',
                                url: "EliminarSolicitudTransporteMaquinaria.jsp",
                                success: function (response) {
                                    listar();

                                }
                            });
                        }                
                    }
    </script>
    <body style="background: none">
        
        <div id="Solicitudes"></div>
    </body>
    <script>
        listar();
    </script>
</html>
