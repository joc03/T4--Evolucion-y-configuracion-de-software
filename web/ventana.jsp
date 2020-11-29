<%-- 
    Document   : ventana
    Created on : 28/10/2020, 08:36:35 PM
    Author     : josed
--%>

<%@page import="br.Boletabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        
       
        
        
    </head>
    <body>
        
        <div class="">
        <div class=""  id="hide" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
                                            <br>
                                
                                </div>
                            </div>
                        </div>
                                            <div  style="color: white">   
                                    <div class="row">
                                        <div class="col-2">
                                            Señor
                                        </div>
                                        <div class="col-10">
                                            <input class="form-control bg-light" disabled=""  name="txtcodigocli" type="text" id="txtcodigo">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-3">
                                            Fecha de inicio
                                        </div>
                                        <div class="col-3">
                                            <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtapellido">
                                        </div>
                                        <div class="col-3">
                                            Fecha Fin
                                        </div>
                                        <div class="col-3">
                                           <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtdni">
                                            
                                        </div>
                                    </div>
                            </div> 
                                            <br>
                                            <div class="table" style="color: white">
                                                <table class="table table-light" border="2" style="color: black;border-radius: 10px">
                                                    <thead class="table-warning" style="text-align: center">
                                                    <th>
                                                        <div class="row">
                                                            <div class="col-2">CANT.</div>
                                                            <div class="col-6">DESCRIPCION</div>
                                                            <div class="col-2">P.UNITARIO</div>
                                                            <div class="col-2">IMPORTE</div>
                                                        </div>
                                                    </th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                             <div class="row">
                                                            <div class="col-2">CANT.</div>
                                                            <div class="col-6">DESCRIPCION</div>
                                                            <div class="col-2">P.UNITARIO</div>
                                                            <div class="col-2">IMPORTE</div>
                                                        </div>   
                                                            </td>
                                                            </div>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row">
                                                                    <div class="col-10" style="text-align: right">
                                                                        total
                                                                    </div>
                                                                    <div class="col-2">
                                                            <input class="form-control bg-light"  name="txtcodigocli" type="text" id="txtnombre">            
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        
                                                    </tbody>
                                                </table>
                                               
                                            </div>
                                            
                                            
                                            
                                
              </div>
                    <div class="modal-footer " style="background:  #ffcc20">
                  <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="closemodal()">Close</button>
                  <button type="submit" class="btn btn-primary" onclick="GuardarBoleta()">GUARDAR CAMBIOS</button>
              </div>
                       </form>
            </div>
          </div>
        </div>
            </div>
  
        
        
       
            
        
        
        
        
        
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>    
    </body>
</html>
