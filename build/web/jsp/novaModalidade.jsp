<%-- 
    Document   : novaModalidade
    Created on : 26/04/2016, 17:38:58
    Author     : Marcio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Bootstrap-->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <script src="js/jquery2.1.4.js" type="text/javascript"></script>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
         <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
    <script type="text/javascript">
        function cadastrar(){            
                $.ajax({
                    type: "post",
                    url: "jsp/cadastroModalidadebd.jsp", //here you can use servlet,jsp, etc
                    data: "nome=" +$('#nomeModadlidade').val()+"&preco="+$('#precoModalidade').val(),
                    success: function(data){      
                            //$('#output').append(msg);
                        document.getElementById("precoModalidade").value="";
			document.getElementById("nomeModadlidade").value="";
                         $("#msgUsuario").html(data);
                        
                    }
                });
          

        };
    </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de modalidade</title>
    </head>
	<body>
            <div style="width:60%">
                <fieldset class="form-horizontal">
                    <legend class="text-center"> <p class="bg-primary">Cadastro de Modalidades</p></legend>

                            <div class="form-group">
                                    <label for="nomeModadlidade" class="col-sm-2 control-label">Nome</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="nomeModadlidade" id="nomeModadlidade">
                                    </div>
                            </div>
                            <br/>
                            <div class="form-group">
                                    <label for="precoModalidade" class="col-sm-2 control-label">Preço</label>
                                    <div class="col-sm-10">
                                     <input type="number" class="form-control" name="precoModalidade" id="precoModalidade"  min="0" pattern="/^[0-9]+(\.[0-9]{1,2})?$/" step="0.01" >
                                    </div>
                            </div>				
                            <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button onclick="cadastrar()" class="btn btn-lg btn-primary" id="btCadastrar" >Cadastrar</button>
                                    </div>
                            </div>

                </fieldset>
                <blockquote >
                    <h3 id="msgUsuario"></h3>  
                </blockquote>
            </div>	
	</body>
</html>
