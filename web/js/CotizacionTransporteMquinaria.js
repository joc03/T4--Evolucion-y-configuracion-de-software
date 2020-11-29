/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

  
            
            function eliminar(des,depar,viajes,pre,subto){
                datos={tdescripcion:des,tdepartamento:depar,tviajes:viajes,tprecio:pre,tsubto:subto};                
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "EliminarCotizacionTransporteMaqui.jsp",
                    success: function (response) {
                        listar();
                       
                    }
                });
            }
            function agregar(){
                
                 des=document.getElementById("txtdescripcion").value;
                 depar=document.getElementById("txtdepartamento").value;
                 viajes=document.getElementById("txtviajes").value;
                 datos={tdescripcion:des,tdepartamento:depar,tviajes:viajes};  
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "RegistrarCotizacionTransporte.jsp",
                    success: function (response) {
                        listar();
                        
                    }
                });
            }
                
          
          
           
                function listar(){
                                $.ajax({
                                    type : 'POST',
                                    url: "CotizaTransporteMaquinaria_2.jsp",
                                    success: function (response12) {
                                        document.getElementById("listado1").innerHTML=response12;
                                    }
                                });


                    } 
