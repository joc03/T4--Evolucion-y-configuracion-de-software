/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 
            function eliminarAlqui(cod,conte){
                alert("desea eliminar?" + conte);
                datos={tcodigo:cod,tcontenido:conte};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "AlquilerMaquinaria_Eliminar.jsp",
                    success: function (response) {
                        listarMaquina();
                      
                    }
                });
            }
            function eliminarContenido(){
                
                $.ajax({
                    
                });
            }
           
            
            function agregarAlquiler(){
                 cod=document.getElementById("texMaquinaria").value;
                 dias=document.getElementById("texDias").value;
                 cant=document.getElementById("texCant").value;
                 datos={tmaquina:cod,tdias:dias,tcantidad:cant};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "AlquilerMaquinaria_AgregarMaquina_Registrrar.jsp",
                    success: function (response12) {
                        listarMaquina();
                        
                    }
                });
            }
             
            function AgregarAlqui(){
                 dni=document.getElementById("txtcodigo").value;
                 precio=document.getElementById("txtsuma").value;
                 fechai=document.getElementById("FechaInicio").value;
                 fechaf=document.getElementById("FechaFin").value;
                 datos={Tdni:dni,Tprecio:precio,TfechaIni:fechai,TfechaFin:fechaf};
                 $.ajax({
                     data: datos,
                     type: 'POST',
                     url: "AlquilerMaquinariaRegistrar.jsp",
                     success: function (response){
                         listar();
                     }
                 });
            }
          
          
           
                function listar(){
                    
                                $.ajax({
                                    type : 'POST',
                                    url: "AlquilerMaquinaria_AgregarMaquina_2.jsp",
                                    success: function (response12) {
                                        document.getElementById("listado1").innerHTML=response12;
                                    }
                                });


                    }  
                  function listarMaquina(){
                    
                                $.ajax({
                                    type : 'POST',
                                    url: "AlquilerMaquinaria_AgregarMaquina.jsp",
                                    success: function (response122) {
                                        document.getElementById("ListadoMaquina").innerHTML=response122;
                                    }
                                });


                    }  
                function listarCliente(){
                    cod=document.getElementById("txtcodigo").value;
                    datos={Tcodigo:cod};
                                $.ajax({
                                     data: datos,
                                    type : 'POST',
                                    url: "AlquilerMaquinaria_Cliente.jsp",
                                    success: function (response123) {
                                        document.getElementById("ListaCliente").innerHTML=response123;
                                    }
                                });


                }  
