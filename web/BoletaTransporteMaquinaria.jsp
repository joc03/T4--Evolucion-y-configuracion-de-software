<%-- 
    Document   : BoletaTransporteMaquinaria
    Created on : 24/11/2020, 03:42:36 PM
    Author     : josed
--%>

<%@page import="be.ContenidoTransportebe"%>
<%@page import="be.BoletaTransporteMaquinaria"%>
<%@page import="java.util.List"%>
<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page import="br.Boletabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
    </head>
    <style >
        
        @media print{
            .imprimir{
                display: none;
            }
        }
    </style>
    <body style="background: none">
        <% 
        
        String codig = request.getParameter("textCodigoContenido");
        //String codig = "T2";
        %>
       <div class=""  id="hide" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class=" " role="document">
              <div class="modal-content" style="">
              <div class="modal-header" style="background:  #ffcc20">
                  <h5 class="modal-title" id="exampleModalLongTitle" style="background:  #ffcc20">
                      <i class="fas fa-table"></i> BOLETA</h5>
                     
              </div>
                  
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
                                                  style="display: inline-block;width: 100%; height: 33%;background: #fdfdfe;text-align: center  "
                                                 >
                                                R.U.C. 20409637150
                                            </div>
                                            
                                            <div class="row"
                                                 style="display: inline-block;width: 100%; height: 33%;background: #ffcc20; text-align: center "
                                                 >
                                                BOLETA DE VENTA
                                            </div>
                                            
                                            
                                            <div class="row" id="textcodigoo"
                                                 style="display: inline-block;width: 100%; height: 33%;background: #fdfdfe;text-align: center  ">
                                                 <%   
                                    
                                    List<BoletaTransporteMaquinaria> lista;
                                    TransporteMaquinariaPreciobr regla = new TransporteMaquinariaPreciobr();
                                    lista = regla.BuscarBoleta(codig);
                                    for (BoletaTransporteMaquinaria entidad:lista){
                                %>    
                                              COD: <%=entidad.getCodigo() %>
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
                                            <input class="form-control bg-light" value="<%= entidad.getApellido()%>"
                                                   name="txtNombreGB" type="text" id="txtNombreGB" readonly="">
                                        </div>
                                        <div class="col-2">
                                            DNI
                                        </div>
                                        <div class="col-2">
                                            <input class="form-control bg-light" value="<%= entidad.getDni()%>"
                                                   readonly=""  name="txtNombreGB" type="text" id="txtcodigoGB">
                                        </div>
                                    </div>
                                <br>
                                    <div class="row">
                                        <div class="col-2">
                                            Fecha de transporte
                                        </div>
                                        <div class="col-4">
                                            <input class="form-control bg-light" readonly="" value="<%= entidad.getFecha()%>"
                                                   name="txtfechIGB" type="date" id="txtfechIGB">
                                        </div>
                                    </div>
                                <br>
                                <div>
                            <div class="row">
                                  <!-- tabla de contenido -->
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
                                                         <% 
                                                        String cod = entidad.getCodCont();
                                                        List<ContenidoTransportebe> Cont;
                                                        TransporteMaquinariaPreciobr rc = new TransporteMaquinariaPreciobr();
                                                        Cont = rc.listarContenidoTransporteMaquinaria(cod);
                                                        for (ContenidoTransportebe entida:Cont){
                                                        %>    
                                                        <tr>
                                                            <td>
                                                             <div class="row">
                                                            <div class="col-2"> <%= entida.getCantidad() %></div>
                                                            <div class="col-6"><%= entida.getMaquina()%> Transportado: <%= entida.getVehiculo()%> - <%= entida.getDepa()%></div>
                                                            <div class="col-2"><%= entida.getPrecio()%></div>
                                                            <div class="col-2"><%= entida.getSubtotal()%></div>
                                                            </div>   
                                                            </td>
                                                        </tr>
                                                        <% 
                                                        }
                                                        %> 
                                                        <tr>
                                                            <td>
                                                                <div class="row">
                                                                    <div class="col-10" style="text-align: right">
                                                                        total S/.
                                                                    </div>
                                                                    <div class="col-2">
                                                                        <input class="form-control bg-light"  name="txtcodigocli" type="textprecio" id="txtnombre" readonly=""
                                                                               value='<%= entidad.getPrecio() %>' >            
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div> 
                            </div>
                        </div> 
                                <div class="row" id="Contenido">
                                    </div>
                            </div>
                                <%
                                    }
                                %>
                        </div>
                    </div>
                <div class="modal-footer " style="background:  #ffcc20">
                    <button type="submit" class="btn btn-primary imprimir" onclick="window.print()" >IMPRIMIR BOLETA</button>
                </div>
            </div>
          </div>
        </div>
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>                                        
    </body>
</html>
