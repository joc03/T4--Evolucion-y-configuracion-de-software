<%-- 
    Document   : MenuPrincipal
    Created on : 28/10/2020, 01:24:08 AM
    Author     : josed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <link rel="shortcut icon" href="img/LogoIlche.jpeg"> 
        <link href="EstilosMenú.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
        <script src="jquery.js" type="text/javascript"></script>
    </head>
   <!-- codigo para deslizar la barra-->
        
	<script type="text/javascript">
		$(document).ready(function(){
			$(".sidebar-btn").click(function(){
				$(".wrapper").toggleClass("collapse");
			});
		});
                
		</script>
        
        <body style=" background: url(img/Menu1.2.png) ; background-repeat: no-repeat;
          width: 100%; min-height: 100vh; background-position: center;background-size: cover;
          background-attachment: fixed;">
		<!--wrapper start-->
		<div class="wrapper">
			<!--header menu start-->
			<div class="header">
				<div class="header-menu">
                                    <img src="img/LogoIlche.jpeg" style="width: 50px; height: 50px; float: left" alt=""/>
					<div class="title">Ilche</div>
					<div class="sidebar-btn">
						<i class="fas fa-bars"></i>
					</div>
					<ul>
						
                                            <li><a href="Login.jsp"><i class="fas fa-power-off"></i></a></li>
					</ul>
				</div>
			</div>
			<!--header menu end-->
			<!--sidebar start-->
                        <div class="sidebar" style="overflow-y: hidden; ">
                            <div class="sidebar-menu" style=" ">
					<center class="profile">
                                                <img src="img/avatar.png" alt=""/>
						<p>Admin</p>
					</center>
					<li class="item">
                                             <a href="home.jsp" target="myframe" class="menu-btn">
							<i class="fas fa-desktop"></i><span>Home</span>
						</a>
					</li> 
					<li class="item" id="Clientes">
						<a href="#Clientes" class="menu-btn">
							<i class="fas fa-user-circle"></i><span>Clientes <i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
                                                    <a href="RegistrarClientes.jsp" target="myframe" ><i class="fas fa-user-plus" ></i><span>Registrar cliente</span></a>
                                                    <a href="ListarClientes.jsp" target="myframe"><i class="fas fa-address-card"></i><span>Listar cliente</span></a>
                                                    <a href="BuscarCliente.jsp" target="myframe"><i class="fas fa-search"></i><span>Buscar cliente</span></a>
						</div>
					</li>
					<li class="item" id="vehículos">
						<a href="#vehículos" class="menu-btn">
                                                    <i class="fas fa-truck-moving"></i><span>Vehículos <i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
                                                    <a href="RegistrarVehiculo.jsp" target="myframe"><i class="fas fa-plus-circle"></i><span>Nuevo</span></a>
                                                    <a href="ListarVehiculo.jsp" target="myframe"><i class="fas fa-list"></i><span>Listar</span></a>
                                                    <a href="BuscarVehiculos.jsp" target="myframe"><i class="fas fa-search"></i><span>Buscar vehículos</span></a>
						</div>
					</li>
                                        <li class="item" id="messages">
						<a href="#messages" class="menu-btn">
							<i class="fas fa-tractor"></i><span>Maquinarias <i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
                                                    <a href="RegistrarMaquinaria.jsp" target="myframe"><i class="fas fa-plus-circle"></i><span>Nuevo</span></a>
                                                    <a href="ListarMaquinarias.jsp" target="myframe"><i class="fas fa-list"></i><span>Listar</span></a>
                                                    <a href="BuscarMaquinaria.jsp" target="myframe"><i class="fas fa-search"></i><span>Buscar maquianria</span></a>
                                                     <a href="ListarDepart.jsp" target="myframe"><i class="fas fa-notes-medical"></i><span>Departamento</span></a>
						</div>
					</li>
                                        <li class="item" id="Cotización">
						<a href="#Cotización" class="menu-btn">
                                                    <i class="fas fa-sticky-note"></i><span>Cotización <i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
                                                    <a href="CotizaAlquilerMaquinaria.jsp" target="myframe"><i class="fas fa-notes-medical"></i><span>Alquiler de maquinaria</span></a>
                                                    <a href="CotizaTransporteMaquinaria.jsp" target="myframe"><i class="fas fa-notes-medical"></i><span>Transporte de maquinaria</span></a>
                                                    <a href="CotizaTransporteMateriales.jsp" target="myframe"><i class="fas fa-notes-medical"></i><span>Transporte de materiales</span></a>
						</div>
					</li>
                                        <li class="item" id="Servicios">
						<a href="#Servicios" class="menu-btn">
                                                    <i class="fas fa-sticky-note"></i><span>Generar Solicitudes <i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
                                                    <a href="AlquilerMaquinaria.jsp" target="myframe"><i class="fas fa-notes-medical"></i><span>Alquiler de maquinaria</span></a>
                                                    <a href="TransporteMaquinaria.jsp" target="myframe"><i class="fas fa-notes-medical"></i><span>Transporte de maquinaria</span></a>
                                                    
						</div>
					</li>
                                        <!--
                                        <li class="item" id="AlquilerMaquinaria">
						<a href="#AlquilerMaquinaria" class="menu-btn">
                                                    <i class="fas fa-sticky-note"></i><span>Alquiler de Maquinaria<i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
                                                    <a href="SolicitudAlquilerMaquinaria.jsp" target="myframe"><i class="fas fa-notes-medical"></i><span>Solicitudes</span></a>
                                                    <a href="PedidoAlquilerMaquinaroa.jsp" target="myframe"><i class="fas fa-notes-medical"></i><span>Pedidos</span></a>
                                                    
						</div>
					</li>
                                        -->
                                        <li class="item" id="TransporteMaquinaria">
						<a href="#TransporteMaquinaria" class="menu-btn">
                                                    <i class="fas fa-sticky-note"></i><span>Transporte de Maquinaria<i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
                                                    <a href="SolicitudesTransporteMaquinaria_2.jsp" target="myframe"><i class="fas fa-notes-medical"></i><span>Solicitudes</span></a>
                                                    <a href="PedidoTransporteMaquinaria.jsp" target="myframe"><i class="fas fa-notes-medical"></i><span>Pedidos</span></a>
                                                    
						</div>
					</li>
				</div>
			</div>
                        <div class="main-container" style=" ">
                            <iframe name="myframe" style="height: 100%; width: 100%; border: 0;overflow: hidden">
                                
                            </iframe>
                        
                        </div>
		</div>
        </body>
</html>