function iniciarOpcoes(id){
				$.get( "php/pesquisa_cadastro.php", function( data ) {
					var options = "";
					$.each(data, function(key, value){
						options += '<option value="'+ key +'">' + value + "</option>";
					});
					$( "#"+id ).html( options );
				}, 'json');		
			};
		function cadastrarUsuario(){			
			var nome = $("#nomeModadlidade").val();
			var preco = $("#precoModalidade").val();			
			$.ajax({
				method: "get",
				url: "cadastroModalidadebd.jsp",
					success: function( data ) {
					//$("#mensagemUsuario").html(data);
					//document.getElementById("usuarioLogin").value="";
					//document.getElementById("usuarioSenha").value="";
					
					
					
				},
				data: {nome: nome,preco:preco},
				error: function(data){
						alert(data);
					}			
			})		
		};