/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

            function eliminar(cod,nom,apell,dni,tele,dire,email){ 
                
                var r = confirm("Está seguro de eliminar el registro de " + nom );
                datos={tcodigo:cod,tnombre:nom,tapellido:apell,tdni:dni,ttelefono:tele,tdireccion:dire,temail:email};
                if(r === true){
                    $.ajax({
                        data: datos,
                        type: 'POST',
                        url: "EliminarCliente.jsp",
                        success: function (response) {
                            listar();
                            alert("Cliente eliminado");
                        }
                    });
                }                
            }   
            
            function editar(cod,nom,apell,dni,tele,dire,email){
                
                document.getElementById("txtcodigo").value=cod;
                document.getElementById("txtnombre").value=nom;
                document.getElementById("txtapellido").value=apell;
                document.getElementById("txtdni").value=dni;
                document.getElementById("txtcelular").value=tele;
                document.getElementById("txtdireccion").value=dire;
                document.getElementById("txtcorreo").value=email;     
                $('.modal').fadeIn(2000);
              
            } 
            
            
            function closemodal(){
                $('.modal').fadeOut(500);
                listar();
            }
            function actualiza(){
                cod=document.getElementById("txtcodigo").value;
                nom=document.getElementById("txtnombre").value;
                apell=document.getElementById("txtapellido").value;
                dni=document.getElementById("txtdni").value;
                tele=document.getElementById("txtcelular").value;
                dire=document.getElementById("txtdireccion").value;
                email=document.getElementById("txtcorreo").value;
                
                datos={tcodigog:cod,tnombreg:nom,tapellidog:apell,tdnig:dni,ttelefonog:tele,tdirecciong:dire,temailg:email};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "ActualizarCliente.jsp",
                    success: function (response) {
                        listar();
                        alert("Datos Actualizados");
                    }
                });
                
            }
            function listar(){                
                $.ajax({
                    type : 'POST',
                    url: "ListarClientes_1.jsp",
                    success: function (response1) {
                        document.getElementById("listado1").innerHTML=response1;
                    }
                });   
                
            }
            