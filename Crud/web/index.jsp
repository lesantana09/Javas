<%@page import='first.model.Cliente, first.persistence.ClienteDao' %>
<%@page import='java.util.List' %>
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
            ${msg}
        </form>   
        <br/>
        <br/>
        <h1>Lista de Clientes</h1>
        <table width="50%" border="1">
            <tr>
                <td>Codigo do Cliente</td>
                <td>Nome</td>
                <td>Telefone</td>
                <td>Email</td>
                <td>Site</td>
            </tr>
            <%
                try{
                ClienteDao cd = new ClienteDao();
                List<Cliente> lista = cd.ListarClientes();
                for(Cliente c : lista){     
            %>
            <tr>
                <td><%= c.getCod_cliente() %></td>
                <td><%= c.getNome()  %></td>
                <td><%= c.getTelefone()  %></td>
                <td><%= c.getEmail()  %></td>
                <td><%= c.getSite()  %></td>
            </tr>
            <%  
                }
                 }catch(Exception e){
                    out.print("Erro");
                }
            %>
                
           
        </table>
    </body>
</html>
