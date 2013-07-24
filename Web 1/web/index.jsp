<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primeiro Formulário</title>
    </head>
    <body>
        <form action="resgate.jsp" method="post">
           <!-- Nome: <br/>
            <input type="text" name="nome"/><br/>
            Email <br/>
            <input type="text" name="email"/><br/>-->
            Site:<br/>
                Teste 1: <input type="checkbox" name="site" value="teste1"/>
                Teste 2: <input type="checkbox" name="site" value="teste2"/>
                Teste 3: <input type="checkbox" name="site" value="teste3"/>
                Teste 4: <input type="checkbox" name="site" value="teste4"/>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>