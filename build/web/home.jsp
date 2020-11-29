<%-- 
    Document   : home
    Created on : 31/10/2020, 09:47:51 AM
    Author     : josed
--%>

<%@page import="br.RegistrarServiciobr"%>
<%@page import="be.ContenidoAlquilerbe"%>
<%@page import="java.util.List"%>
<%@page import="br.Boletabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery.js" type="text/javascript"></script>
        <script src="js/home.js" type="text/javascript"></script>
       
    </head>
    
    <script>
        function listar(){
    $.ajax({
        type: 'POST',
        url: "hom_1.jsp",
        success: function (response) {
            document.getElementById("listado").innerHTML=response;
        }
    });
}
function listarContenido(){
    $.ajax({
        type: 'POST',
        url: "home_contenido.jsp",
        success: function (response) {
            document.getElementById("Contenido").innerHTML=response;
            
        }
    });
}

function VerDetalle(){
               
                codCont=document.getElementById("txtCodContGB").value;
                datos={TcodCont:codCont};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "home_contenido.jsp",
                    success: function (response) {
                        listarContenido();
                        
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
               
                
                dni=document.getElementById("txtcodigoGB").value;
                nom=document.getElementById("txtNombreGB").value;
                pre=document.getElementById("txtPrecioGB").value;
                codCont=document.getElementById("txtCodContGB").value;
                fechI=document.getElementById("txtfechIGB").value;
                fechF=document.getElementById("txtfechFGB").value;
                Tipo=document.getElementById("txttipoGB").value;
                
                
                datos={tdni:dni,Tnombre:nom,TCodCont:codCont,tpre:pre,tfechI:fechI,tfechF:fechF,Ttipo:Tipo};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "home_RegistrarBoleta.jsp",
                    success: function (response) {
                        alert("Boleta generada y guardada");
                        listar();
                        
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

        
    </script>
    
    <body style="background: none">
      
        <div id="listado"></div>
        <br>
        <div id="ListaPedido"></div>
        
        
        
        
        <div class="">
        <div class="modal"  id="hide" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-xl " role="document">
              <div class="modal-content" style="">
              <div class="modal-header" style="background:  #ffcc20">
                  <h5 class="modal-title" id="exampleModalLongTitle" style="background:  #ffcc20">
                      <i class="fas fa-table"></i> BOLETA</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="closemodal()">
                      <span aria-hidden="true">&times;</span>
                      </button>
              </div>
                  <form action="home.jsp">
                    <div class="modal-body" style="background:  black">
                        <div class="" style="color: white; padding: 5px">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-2">
                                        <div><img src="img/LogoIlche.jpeg" alt="" style="width: 100%"></div>
                                        <div style="text-align: center"><b><h3>Ilche S.R.L</h3></b></div>
                                    </div>
                                    <div class="col-6" style="text-align: center">
                                        <br> <br>
                                        <div><b>N° RUC: 20409637150</b></div>
                                        <div><b>Direccion:Los Libertadores Wari - Km. 15.5, Independencia 11640 (Pisco)</b></div>
                                        <div><b> Telefono:956 070 634 </b></div>
                                        <div><b> Correo:pjh-419@hotmail.com </b></div>
                                    </div>
                                    <div class="col-4" style="padding: 20px; color: black;font-size: 30px" >
                                        <div class="rounded"
                                            style="display: inline-block;width: 100%; height: 100% ;background: ">
                                            <div class="row"
                                                  style="display: inline-block;width: 100%; height: 33%;background: #fdfdfe; "
                                                 >
                                                R.U.C.
                                            </div>
                                            
                                            <div class="row"
                                                 style="display: inline-block;width: 100%; height: 33%;background: #ffcc20; text-align: center "
                                                 >
                                                BOLETA DE VENTA
                                            </div>
                                            
                                            <div class="row" id="textcodigoo"
                                                 style="display: inline-block;width: 100%; height: 33%;background: #fdfdfe; ">
                                                <%
                                                br.Boletabr lo = new Boletabr();
                                        int resultado= lo.Filas();
                                        String codigo = "N000" + resultado;    
                                                %>
                                               <%=codigo %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div  style="color: white">   
                                    <div class="row">
                                        <div class="col-2">
                                            Señor(a)
                                        </div>
                                        <div class="col-6">
                                            <input class="form-control bg-light"  name="txtNombreGB" type="text" id="txtNombreGB" readonly="">
                                        </div>
                                        <div class="col-2">
                                            DNI
                                        </div>
                                        <div class="col-2">
                                            <input class="form-control bg-light" readonly=""  name="txtNombreGB" type="text" id="txtcodigoGB">
                                        </div>
                                    </div>
                                <br>
                                    <div class="row">
                                        <div class="col-2">
                                            Fecha de inicio
                                        </div>
                                        <div class="col-4">
                                            <input class="form-control bg-light" readonly=""  name="txtfechIGB" type="date" id="txtfechIGB">
                                        </div>
                                        <div class="col-3">
                                            Fecha Fin
                                        </div>
                                        <div class="col-3">
                                           <input class="form-control bg-light" readonly="" name="txtfechFGB" type="date" id="txtfechFGB">                                            
                                        </div>
                                        
                                    </div>
                                <br>
                                <div class="row">
                                    <div class="col-2">
                                           Tipo de servicio : 
                                        </div>
                                    <div class="col-4" id="" type="text">
                                        <input class="form-control bg-light" readonly=""  name="txttipoGB" type="text" id="txttipoGB">
                                        <input type="hidden" name="codigoGB" id="txtCodContGB"  value="">
                                            
                                        </div>
                                        <div class="col-2">
                                            Precio Total
                                        </div>
                                    <div class="col-2" >
                                        
                                        <input class="form-control bg-light" readonly="" name="txtcodigocli" type="text" id="txtPrecioGB" style="text-align: right">
                                        
                                    </div>
                                </div>
                                
                                <div class="row" id="Contenido">
                                        
                                    </div>
                            </div>
                        </div>
                    </div>
                <div class="modal-footer " style="background:  #ffcc20">
                  <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="closemodal()">Close</button>
                  <button type="submit" class="btn btn-primary" onclick="GuardarBoleta()">GENERAR BOLETA</button>
                </div>
            </form>
            </div>
          </div>
        </div>
            </div>
        
    </body>
    <script>
        listar();
        listarPedido();
    </script>
</html>
