<%@page import='first.model.Cliente, first.persistence.ClienteDao'%>

<%
    try {
        Integer cod_cliente = new Integer(request.getParameter("cod_cliente"));
        ClienteDao cd = new ClienteDao();
        //Cliente c = cd.buscaporId("cod_cliente");
        Cliente c = cd.buscaporId(cod_cliente);
        if(c.getCod_cliente()>0){
%>
<form method="post" action="controle.jsp?action=update">
    <h3>Código do Cliente: <%= c.getCod_cliente() %></h3>
    <label for="nome">Nome:</label><br/>
    <input type="text" name="nome" value="<%= c.getNome() %>"/><br/>

    <label for="telefone">Telefone:</label><br/>
    <input type="text" name="telefone" value="<%=c.getTelefone() %>"/><br/>

    <label for="email">E-mail:</label><br/>
    <input type="text" name="email" value="<%=c.getEmail() %>"/><br/>

    <label for="site">Site:</label><br/>
    <input type="text" name="site" value="<%=c.getSite() %>"/><br/>
    <input type="hidden" name="cod_cliente" value="<%=c.getCod_cliente() %>"/>

    <input type="submit" value="Cadastrar Cliente"/>       
</form>   
<%
        }
    } catch (Exception e) {
    }
%>