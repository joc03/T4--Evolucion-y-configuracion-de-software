/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
            function eliminarVeh(cod,nom,ape,dni,fech,hora){
                var r = confirm("Está seguro de eliminar el registro de " + nom );
                datos={tcodigo:cod,tnombre:nom,tapellido:ape,tdni:dni,tfecha:fech,thora:hora};
                if(r === true){
                    $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "EliminarVehiculo.jsp",
                    success: function (response) {
                        listar();
                        alert("Vehículo eliminado eliminados");
                    }
                });
                }
                
            }
            
            function editar(cod,nom,pol,pest,pesb,cargu){                
                document.getElementById("txtcodigo").value=cod;
                document.getElementById("txtnombre").value=nom;
                document.getElementById("txtapellido").value=pol;
                document.getElementById("txtdni").value=pest;
                document.getElementById("txtcelular").value=pesb;
                document.getElementById("txtdireccion").value=cargu;
                $('.modal').fadeIn(2000);
            }  
            function closemodal(){
                $('.modal').fadeOut(500);
                listar();
            }
            function actualiza(){
                cod=document.getElementById("txtcodigo").value;
                nom=document.getElementById("txtnombre").value;
                pol=document.getElementById("txtapellido").value;
                pest=document.getElementById("txtdni").value;
                pesb=document.getElementById("txtcelular").value;
                cargu=document.getElementById("txtdireccion").value;
                                
                datos={tcodigog:cod,tnombreg:nom,tpoliza:pol,tpesotara:pest,tpesobruto:pesb,tcargounitario:cargu};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "ActualizarVehiculo.jsp",
                    success: function (response) {
                        listar();
                        alert("Datos Actualizados");
                    }
                });
              
            }
           
            function listarVehi(){
                
                $.ajax({
                    type : 'POST',
                    url: "ListarVehiculo_2.jsp",
                    success: function (response1) {
                        document.getElementById("listado1").innerHTML=response1;
                    }
                });
              
            
    }

