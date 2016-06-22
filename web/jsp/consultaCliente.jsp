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

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Clientes</title>
    </head>
    <body>
        <div class="col-md-9" role="main">
            <h1>
                <span class="label label-success">Formulário de Consulta - Clientes</span>
            </h1>
            <form class="form-horizontal" action="jsp/listaCliente.jsp" method="POST">
                <div class="form-group">
                    <label for="clienteMatricula" class="col-sm-2 control-label">Matrícula do cliente</label>
                    <div class="col-sm-10">
                        <input type="number" min="0" value="0" class="form-control" id="clienteMatricula" name="clienteMatricula">
                    </div>
                </div>
                <div class="form-group">
                    <label for="clienteNome" class="col-sm-2 control-label">Nome do Cliente</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="clienteNome" name="clienteNome">
                    </div>
                </div>
                <div class="form-group">
                    <label for="clienteCPF" class="col-sm-2 control-label">CPF do cliente</label>
                    <div class="col-sm-10">
                        <input type="number" min="0" value="0" class="form-control" id="clienteCPF" name="clienteCPF">
                    </div>
                </div>
                <div class="form-group">
                    <label for="clienteModalidade" class="col-sm-2 control-label">Código da modalidade</label>
                    <div class="col-sm-10">
                        <input type="number" min="0" value="0" class="form-control" id="clienteModalidade" name="clienteModalidade">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Consultar</button>
                        <button type="reset" class="btn btn-default">Limpar</button>
                    </div>
                </div>
            </form>            
        </div>
    </body>
</html>
