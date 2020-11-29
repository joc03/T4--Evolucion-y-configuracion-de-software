/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function listar(){
    $.ajax({
        type: 'POST',
        url: "hom_1.jsp",
        success: function (response) {
            document.getElementById("listado").innerHTML=response;
        }
    });
}
function listarPedido(){
    $.ajax({
        type: 'POST',
        url: "hom_2.jsp",
        success: function (response1) {
            document.getElementById("ListaPedido").innerHTML=response1;
        }
    });
}

function eliminarAlquiler(cod,dni){ 
                
                var r = confirm("Está seguro de eliminar la solicitud  de " + dni );
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
function AgregarPedido(dni,codco,ape,pre,fechI,fechF){
   
    datos={tcodigo:dni,tCodCont:codco,Tapellido:ape,Tprecio:pre,TfechaI:fechI,TfechaF:fechF};    
              
                    $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "home_RegistrarPedido.jsp",
                    success: function (response) {
                        listar();
                        listarPedido();
                        
                    }
                });
                            
            }

function GenerarBoleta(dni,nom,pre,codCont,fechI,fechF,tipo){
                alert("hola"+dni+"hola"+nom+"hola"+pre+"hola"+codCont+"hola"+fechI+"hola"+fechF+"hola"+tipo);
                document.getElementById("txtcodigoGB").value=dni;
                document.getElementById("txtNombreGB").value=nom;
                document.getElementById("txtPrecioGB").value=pre;
                document.getElementById("txtCodContGB").value=codCont;
                document.getElementById("txtfechIGB").value=fechI;
                document.getElementById("txtfechFGB").value=fechF;
                document.getElementById("txttipoGB").value=tipo;    
                $('.modal').fadeIn(2000);
              
            }
function closemodal(){
                $('.modal').fadeOut(500);
                listar();
            }
function GuardarBoleta(){
                dni=document.getElementById("txtcodigo").value;
                pre=document.getElementById("txtnombre").value;
                fechI=document.getElementById("txtapellido").value;
                fechF=document.getElementById("txtdni").value;
                Tipo=document.getElementById("txtcelular").value;
                datos={tdni:dni,tpre:pre,tfechI:fechI,tfechF:fechF,Ttipo:Tipo};
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
