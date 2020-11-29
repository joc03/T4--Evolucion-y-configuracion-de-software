/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

 
            function eliminar(cod,nom,ape,dni,fech,hora){
                 var r = confirm("Está seguro de eliminar el registro de " + nom );
                datos={tcodigo:cod,tnombre:nom,tapellido:ape,tdni:dni,tfecha:fech,thora:hora};    
                if(r === true){
                    $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "EliminarMaquinaria.jsp",
                    success: function (response) {
                        listar();
                        alert("Maquinaria   eliminado");
                    }
                });
                }                
            }
            
            function editar(cod,tipo,cant,pre,pes,dimen){                
                document.getElementById("txtcodigo").value=cod;
                document.getElementById("txtnombre").value=tipo;
                document.getElementById("txtapellido").value=cant;
                document.getElementById("txtdni").value=pre;
                document.getElementById("txtcelular").value=pes;
                document.getElementById("txtdireccion").value=dimen;
                $('.modal').fadeIn(2000);
            }  
            function closemodal(){
                $('.modal').fadeOut(500);
                listar();
            }
            function actualiza(){
                cod=document.getElementById("txtcodigo").value;
                tipo=document.getElementById("txtnombre").value;
                cant=document.getElementById("txtapellido").value;
                pre=document.getElementById("txtdni").value;
                pes=document.getElementById("txtcelular").value;
                dimen=document.getElementById("txtdireccion").value;
                
                
                datos={tcodigog:cod,ttipo:tipo,tcantidad:cant,tprecio:pre,tpeso:pes,tdimenciones:dimen};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "ActualizarMaquinaria.jsp",
                    success: function (response) {
                        listar();
                        alert("Datos Actualizados");
                    }
                });
                
            }
           
            function listar(){
                
                $.ajax({
                    type : 'POST',
                    url: "ListarMaquinaria_2.jsp",
                    success: function (response1) {
                        document.getElementById("listado1").innerHTML=response1;
                    }
                });
               
            
    }
