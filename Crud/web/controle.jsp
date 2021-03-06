<%@page import='first.model.Cliente, first.persistence.ClienteDao' %>
<%
    try {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("cadastrar")) {
            Cliente c = new Cliente();

            c.setNome(request.getParameter("nome"));
            c.setTelefone(request.getParameter("telefone"));
            c.setEmail(request.getParameter("email"));
            c.setSite(request.getParameter("site"));

            ClienteDao cd = new ClienteDao();
            try {
                cd.cadastrar(c);
                request.setAttribute("msg", "Cadastrado com sucesso!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } catch (Exception e) {
                //out.print(e.getMessage());
                System.out.println("Hello World vixe!");
            }
        } else if (action.equalsIgnoreCase("excluir")) {
            try {
                Integer cod_cliente = Integer.parseInt(request.getParameter("cod_cliente"));
                ClienteDao cd = new ClienteDao();
                Cliente c = cd.buscaporId(cod_cliente);
                if (c.getCod_cliente() > 0) {
                    cd.delete(c);
                    request.setAttribute("msg", "Deletado com sucesso!");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } catch (Exception e) {
                out.print("Erro: " + e.getMessage());
            }
        } else if (action.equalsIgnoreCase("update")) {
            Cliente c = new Cliente();
            c.setCod_cliente(new Integer(request.getParameter("cod_cliente")));
            c.setNome(request.getParameter("nome"));
            c.setTelefone(request.getParameter("telefone"));
            c.setEmail(request.getParameter("email"));
            c.setSite(request.getParameter("site"));

            ClienteDao cd = new ClienteDao();
            try {
                cd.update(c);
                request.setAttribute("msg", "Atualizado com sucesso!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } catch (Exception e) {
                out.print(e.getMessage());
            }
        }
    } catch (NullPointerException nexp) {
        out.print("Voc� deveria n�o deveria estar vendo esse aviso.");
    }
%>