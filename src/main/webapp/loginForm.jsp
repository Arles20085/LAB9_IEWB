<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Iniciar Sesion</title>
  </head>
  <body>
  <h1> Iniciar Sesion </h1>

    <% if (session.getAttribute("info") != null) { %>
    <p><%=session.getAttribute("info")%></p>
    <% session.removeAttribute("info"); %>
    <% } %>

    <% if (request.getParameter("error") != null) { %>
    <p>Correo o contraseña incorrectos</p>
    <% } %>

    <form method="POST" action="<%=request.getContextPath()%>/LoginServlet">
        <label for="email"> Correo </label><br>
        <input type="email" name="email" id="email"><br>

        <label for="password"> Contrasenia </label><br>
        <input type="password" name="password" id="password"><br>

        <button type="submit"> Ingresar </button>

    </form>

    <a href="<%=request.getContextPath()%>/RegistroServlet"> Crear Cuenta </a>
  </body>
</html>
