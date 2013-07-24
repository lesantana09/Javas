<%-- 
    Document   : index
    Created on : 23/07/2013, 17:25:10
    Author     : Leandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal</title>
    </head>
    <body>
        <form method="post" action="controle.jsp?action=cadastrar">
            <label for="nome">Nome:</label><br/>
            <input type="text" name="nome"/><br/>

            <label for="telefone">Telefone:</label><br/>
            <input type="text" name="telefone"/><br/>

            <label for="email">E-mail:</label><br/>
            <input type="text" name="email"/><br/>

            <label for="site">Site:</label><br/>
            <input type="text" name="site"/><br/>
            
            <input type="submit" value="Cadastrar Cliente"/>

        </form>      
    </body>
</html>
