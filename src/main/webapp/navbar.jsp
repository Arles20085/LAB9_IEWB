<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="usuarioSession" type="com.example.lab_09_iweb_20222601.beans.Usuario" scope="session" class="com.example.lab_09_iweb_20222601.beans.Usuario"/>
<h2>Biblioteca – <%=usuarioSession.getNombres()%> <%=usuarioSession.getApellidos()%> (<%=usuarioSession.getRol()%>)</h2>
<a href="<%=request.getContextPath()%>/LibroServlet">Libros</a>
<a href="<%=request.getContextPath()%>/PrestamoServlet">Mis préstamos</a>
<% if (usuarioSession.getRol().equals("BIBLIOTECARIO")) { %>
<a href="<%=request.getContextPath()%>/PrestamoServlet?action=todos">Todos los préstamos</a>
<% } %>
<form method="GET" action="<%=request.getContextPath()%>/LoginServlet">
    <input type="hidden" name="action" value="logout">
    <button type="submit">Cerrar sesión</button>
</form>
<hr>
