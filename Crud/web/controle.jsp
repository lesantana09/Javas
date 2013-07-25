<%@page import='first.model.Cliente, first.persistence.ClienteDao' %>
<%
  
try{
    String action = request.getParameter("action");
    if(action.equalsIgnoreCase("cadastrar")){
    Cliente c = new Cliente();
       
        c.setNome(request.getParameter("nome"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEmail(request.getParameter("email"));
        c.setSite(request.getParameter("site"));
        
        ClienteDao cd = new ClienteDao();
        try{
            cd.cadastrar(c);           
            request.setAttribute("msg", "Cadastrado com sucesso!");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }catch(Exception e){
            out.print(e.getMessage());
        }
    }
}catch(NullPointerException nexp){
 out.print("Você deveria não deveria estar vendo esse aviso.");
}  
%>