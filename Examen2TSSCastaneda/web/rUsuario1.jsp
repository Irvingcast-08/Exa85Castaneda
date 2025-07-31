<%-- 
    Document   : rUsuario1
    Created on : 21/06/2025, 09:19:14 AM
    Author     : Dell 5470
--%>

<%@include file="conexion.jsp" %>

<% 
    String usuario = request.getParameter("usuario");//valores vienen desde formulario
    String contrase = request.getParameter("contrase");//VALORES VIENEN DESE FORMULARIO
    st = conexion.prepareStatement("INSERT INTO usuarios values (null,?,?)");
    st.setString(1, usuario);
    st.setString(2, contrase);
    st.execute();
    conexion.close();
    //response.sendRedirect("index.jsp"); 
     response.sendRedirect("index.jsp");
        out.println("<meta http-equiv='refresh' content='0;url=menu.jsp'"); //actualizar pagina

    
%>


    <h2>Exito an ingresar registro</h2>
    <h2>Usuario: <%= usuario %></h2>
    <h2>Password: <%= contrase %></h2>