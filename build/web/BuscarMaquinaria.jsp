<%-- 
    Document   : BuscarMaquinaria
    Created on : 09/10/2020, 03:08:44 PM
    Author     : josed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title>Ilche</title>
                <link rel="shortcut icon" href="img/LogoIlche.jpeg">
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
                <link href="EstilosMenú.css" rel="stylesheet" type="text/css"/>
                <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
                <script src="jquery.js" type="text/javascript"></script>
               
	</head>        
        <!-- codigo para deslizar la barra-->        
	
        
        <body style=" background: none;
          ">	
    <div class="" style="">
        <form action="BuscarMaquinaria.jsp" method="post">
        <div class="card mb-3" style="padding: 0px; margin: 0px">
            <div class="card-header" style=" background: #ffcc20; float: inside">
                        <i class="fas fa-table"></i>
                        BUSCAR MAQUINARIA</div>
                    <div class="card-body" style="background: black; margin: 0; border: 0">
                        <div class="table-responsive" >
                            <table class="table table-borderless " style="background: black; margin: 0; border: 0" id="dataTableDatosBasicos" width="100%" cellspacing="0">
                                <thead></thead>
                                <tbody style="color: white">
                                    <tr>
                                        <th scope="row" style="text-align: center">CODIGO</th>
                                        <td><input class="form-control bg-light"  name="txtcodigo" type="text" ></td>
                                        <td><button class="btn-lg btn-outline-success" >BUSCAR</button></td>
                                    </tr>
                                    <tr>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <jsp:include page="BuscarMaquinaria_2.jsp" />
                    </div>
                </div>
         </form>
    </div>
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script> 
	</body>
    
</html>>
