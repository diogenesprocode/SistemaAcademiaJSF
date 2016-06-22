<%-- 
    Document   : listaCliente
    Created on : 20/04/2016, 09:28:25
    Author     : Diogenes
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 

<%!
    String idModalidade, modalidadeNome, precoModalidade;
%>

<%
    idModalidade = request.getParameter("idModalidade");
    modalidadeNome = request.getParameter("modalidadeNome");
    precoModalidade = request.getParameter("precoModalidade");

%>

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
        <title>Lista de Clientes</title>
    </head>
    <body>
        <div class="col-md-9">
            <h1>
                <span class="label label-success">Lista de Clientes</span>
            </h1>
            <sql:setDataSource var="bdacademia" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/academiadb" user="root" password=""/>
            <sql:query dataSource="${bdacademia}" var="result">
                SELECT * FROM modalidade WHERE id = <%= idModalidade%> OR nome = '<%= modalidadeNome%>' OR preco = <%= precoModalidade%>;
            </sql:query>
            <table class="table table-bordered">
                <tr>
                    <th>Código da Modalidade</th>
                    <th>Nome da Modalidade</th>            
                    <th>Preço</th>       
                </tr>     
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.idModalidade}"/></td>
                        <td><c:out value="${row.modalidadeNome}"/></td>
                        <td><c:out value="${row.precoModalidade}"/></td>
                    </tr>
                </c:forEach>
            </table>    
        </div>
    </body>
</html>
