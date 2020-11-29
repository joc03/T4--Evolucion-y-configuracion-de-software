<%-- 
    Document   : ListarVehiculo
    Created on : 17/07/2020, 05:41:01 AM
    Author     : josem
--%>

<%@page import="java.util.List"%>
<%@page import="br.Vehiculobr"%>
<%@page import="be.Vehiculobe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <link rel="shortcut icon" href="img/LogoIlche.jpeg">
        <script src="jquery.js" type="text/javascript"></script> 
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
        <link href="EstilosMenú.css" rel="stylesheet" type="text/css"/>
        <script src="js/Vehiculo.js" type="text/javascript"></script>
        
        
    </head>
    <body style="background: none">
      
       <!--wrapper start-->
		<div class="wrapper">
			
			
                           <div id="listado1" style="width: 100%; float: left;padding: 0px">     
           
                             </div>
                            
			
			<!--main container end-->
		</div>
        
       
        <div class="modal"  id="hide" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog " role="document">
              <div class="modal-content" style="">
              <div class="modal-header" style="background:  #ffcc20">
                  <h5 class="modal-title" id="exampleModalLongTitle" style="background:  #ffcc20">
                      <i class="fas fa-table"></i> EDITAR VEHÍCULOS</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="closemodal()">
                      <span aria-hidden="true">&times;</span>
                      </button>
              </div>
                  <form action="ListarVehiculo.jsp">
                    <div class="modal-body" style="background:  black">
                        <div class="" style="color: white; padding: 5px">
                            <div class="row" style="margin: 5px">
                                <div class="col-5">
                                    CODIGO
                                </div>
                                <div class="col-7">
                                    <input class="form-control bg-light" disabled=""  name="txtcodigocli" type="text" id="txtcodigo">
                                </div>
                            </div>
                            <div class="row" style="margin: 5px">
                                <div class="col-5">
                                    PLACA
                                </div>
                                <div class="col-7">
                                    <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtnombre">
                                </div>
                            </div>
                            <div class="row" style="margin: 5px">
                                <div class="col-5">
                                    POLIZA
                                </div>
                                <div class="col-7">
                                    <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtapellido">
                                </div>
                            </div>
                            <div class="row" style="margin: 5px">
                                <div class="col-5">
                                    PESO TARA
                                </div>
                                <div class="col-7">
                                    <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtdni">
                                </div>
                            </div>
                            <div class="row" style="margin: 5px">
                                <div class="col-5">
                                    PESO BRUTO(T)
                                </div>
                                <div class="col-7">
                                    <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtcelular">
                                </div>
                            </div>
                            <div class="row" style="margin: 5px">
                                <div class="col-5">
                                    CARGO UNITARIO
                                </div>
                                <div class="col-7">
                                    <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtdireccion">
                                </div>
                            </div>
                            
                        </div>
                        
                        
                        
                     
              </div>
                    <div class="modal-footer " style="background:  #ffcc20">
                  <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="closemodal()">Close</button>
                  <button type="submit" class="btn btn-primary" onclick="actualiza()">GUARDAR CAMBIOS</button>
              </div>
                       </form>
            </div>
          </div>
        </div>
           
       
         
    </body>
 <script>
   listarVehi();
 </script>
</html>




