<%-- 
    Document   : ListarClientes
    Created on : 17/07/2020, 08:17:59 PM
    Author     : josem
--%>

<%@page import="br.Clientebr"%>
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
        <link href="EstilosMenú.css" rel="stylesheet" type="text/css"/>
        
        <script src="js/Depart.js" type="text/javascript"></script>
        </head>
        
        <body style=" background:none">

        <div id="listado1" style=" ">
            
        </div>
        
        
        
        
        
        <!-- Modal -->
       
        <div class="modal"  id="hide" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog " role="document">
              <div class="modal-content" style="">
              <div class="modal-header" style="background:  #ffcc20">
                  <h5 class="modal-title" id="exampleModalLongTitle" style="background:  #ffcc20">
                      <i class="fas fa-table"></i> EDITAR DEPARTAMENTO</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="closemodal()">
                      <span aria-hidden="true">&times;</span>
                      </button>
              </div>
                <form action="ListarDepart.jsp">
                    <div class="modal-body" style="background:  black">
                        <div class="container-fluid" style="color: white; padding: 5px">
                            <div class="row" style="margin: 5px">
                                <div class="col-12">
                                    CODIGO
                                </div>
                                <div class="col-12">
                                    <input class="form-control bg-light" disabled=""  name="txtcodigocli" type="text" id="txtcodigo">
                                </div>
                            </div>
                            <div class="row" style="margin: 5px" >
                                <div class="col-12">
                                    DEPARTAMENTO
                                </div>
                                <div class="col-12">
                                    <input class="form-control bg-light"  name="txtcodigocli" readonly=""  type="text" id="txtnombre">
                                </div>
                            </div>
                            <div class="row" style="margin: 5px">
                                <div class="col-12">
                                    PRECIO
                                </div>
                                <div class="col-12">
                                    <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtapellido">
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
   listar();

 </script>
</html>

