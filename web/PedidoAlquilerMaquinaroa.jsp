<%-- 
    Document   : PedidoAlquilerMaquinaroa
    Created on : 24/11/2020, 07:01:28 PM
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
        function listarPedido(){
    $.ajax({
        type: 'POST',
        url: "PedidoAlquilerMaquinaroa_2.jsp",
        success: function (response1) {
            document.getElementById("ListaPedido").innerHTML=response1;
        }
    });
}
function  eliminarPedido(cod,dni){
    var r = confirm("Está seguro de eliminar el pedido  de " + dni );
                datos={tcodigo:cod};
                if(r === true){
                    $.ajax({
                        data: datos,
                        type: 'POST',
                        url: "EliminarPedido.jsp",
                        success: function (response) {
                            
                            listarPedido();
                        }
                    });
                }
                }
function GenerarBoleta(cod,dni,nom,pre,codCont,fechI,fechF,tipo){
               
                datos={Tcod:cod,tdni:dni,Tnom:nom,tpre:pre,Tcodcont:codCont,tfechI:fechI,tfechF:fechF,Ttipo:tipo};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "home_RegistrarBoleta.jsp",
                    success: function (response) {
                        listar();
                        alert("Datos Actualizados");
                    }
                });
                
            }
    </script>
    
    <body style="background: none">
        
        <div id="ListaPedido"></div>
        
        
    </body>
    
    <script>
        listarPedido();
    </script>
</html>
