<%-- 
    Document   : PedidoTransporteMaquinaria
    Created on : 24/11/2020, 01:14:25 PM
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
                    url: "PedidoTransporteMaquinaria_2.jsp",
                    success: function (response) {
                        document.getElementById("PedidosTranspMaq").innerHTML=response;
                    }
                });
            }
        
        function GenerarBoletaTransporteMaquinaria(cod,dni,codco,ape,pre,fech,chofer){
        datos={tcod:cod,tcodigo:dni,tCodCont:codco,Tapellido:ape,Tprecio:pre,Tfecha:fech,Tchofer:chofer};
                $.ajax({
                data: datos,
                type: 'POST',
                url: "RegistrarBoletaTransporteMaquinaria.jsp",
                success: function (response) {
                    alert("Boleta Generada");
                }
                });
                
                            
        }
        
         
         
        function eliminarPedidoTransporteMaquinaria(cod,ape){ 

                        var r = confirm("Está seguro de eliminar la solicitud  de " + ape );
                        datos={tcodigo:cod};
                        if(r === true){
                            $.ajax({
                                data: datos,
                                type: 'POST',
                                url: "eliminarBoletaTransporteMaquinaria.jsp",
                                success: function (response) {
                                    listar();

                                }
                            });
                        }                
                    }
    </script>
    <body style="background: none">
        <div id="PedidosTranspMaq"></div>
    </body>
    <script>
        listar();
    </script>
</html>
