<%
    /* Use Simple Post
    String nome  = request.getParameter("nome");
    String email = request.getParameter("email");
    
    out.print("Nome: "+nome+"<br/>");
    out.print("E-mail: "+email);
    */
    
    /* For Convencional*/
    String[] site = request.getParameterValues("site");
    
    out.print("<p>Usando for</p>");
    for(int contador=0;contador < site.length; contador++)
    {
        out.print("Escolhido: "+site[contador]+"<br/>");        
    }
    
    out.print("<hr/>");
    
     /* For com Each*/
    out.print("<p>Usando foreach</p>");
    for(String sites : site)
    {
        out.print("Escolhido: "+sites+"<br/>");
    }
    
    out.print("<br/><a href='index.jsp'>Voltar</a>");
    
%>