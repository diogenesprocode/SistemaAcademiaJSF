<%-- 
    Document   : ConsultaCliente
    Created on : 20/04/2016, 09:08:18
    Author     : Diogenes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Bootstrap-->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
         <script src="js/jquery2.1.4.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
    </head>
    <body>
        <div style="width:60%">
            <fieldset class="form-horizontal">
                <legend class="text-center"> <p class="bg-primary">  Formulário de Cadastro - Clientes</p></legend>
                
			
           <!-- <form class="form-horizontal" action="jsp/gravaCliente.jsp" method="POST"> -->
                <div class="form-group">
                    <label for="clienteNome" class="col-sm-2 control-label">Nome do Cliente</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="clienteNome" name="clienteNome">
                    </div>
                </div>
                <div class="form-group">
                    <label for="clienteCPF" class="col-sm-2 control-label">CPF do cliente</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="clienteCPF" name="clienteCPF">
                    </div>
                </div>
                <div class="form-group">
                    <label for="clienteModalidade" class="col-sm-2 control-label">Código da modalidade</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="clienteModalidade" name="clienteModalidade">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Salvar</button>
                        <button type="reset" class="btn btn-default">Limpar</button>
                    </div>
                </div>
            
            </fieldset>
            <blockquote >
                <h3 id="msgUsuario"></h3>  
            </blockquote>
        </div>
    </body>
</html>
