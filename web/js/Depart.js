/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
  
            
            function editar(cod,nom,apell){
                
                document.getElementById("txtcodigo").value=cod;
                document.getElementById("txtnombre").value=nom;
                document.getElementById("txtapellido").value=apell;     
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
                
                datos={tcodigog:cod,tnombreg:nom,tapellidog:apell};
                $.ajax({
                    data: datos,
                    type: 'POST',
                    url: "ActualizarDepartamento.jsp",
                    success: function (response) {
                        listar();
                        alert("Datos Actualizados");
                    }
                });
                
            }
            function listar(){                
                $.ajax({
                    type : 'POST',
                    url: "ListarDepart_1.jsp",
                    success: function (response1) {
                        document.getElementById("listado1").innerHTML=response1;
                    }
                });   
                
            }
            