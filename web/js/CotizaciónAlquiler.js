/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


            
            function eliminar(maq,dias,cant,pre,subto){
                datos={tmaquinaria:maq,tdias:dias,tcantidad:cant,tprecio:pre,tsubto:subto};                
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "EliminarCotizacionAlquiler.jsp",
                    success: function (response) {
                        listar();
                       
                    }
                });
            }
            function agregar(){
                 maq=document.getElementById("txtmaquina").value;
                 cant=document.getElementById("txtcantidad").value;
                 dias=document.getElementById("txtdias").value;
                 datos={tmaquina:maq,tcantidad:cant,tdias:dias};  
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "RegistrarCotizacionAlquiles.jsp",
                    success: function (response) {
                        Contenido();
                        
                    }
                });
            }
                
          
          
           
                function listar(){
                                $.ajax({
                                    type : 'POST',
                                    url: "CotizaAlquilerMaquinaria_2.jsp",
                                    success: function (response12) {
                                        document.getElementById("listado1").innerHTML=response12;
                                    }
                                });


                    } 
                    function Contenido(){
                                $.ajax({
                                    type : 'POST',
                                    url: "CotizaAlquilerMaquinaria_Contenido.jsp",
                                    success: function (response12) {
                                        document.getElementById("Contenido").innerHTML=response12;
                                    }
                                });


                    }

