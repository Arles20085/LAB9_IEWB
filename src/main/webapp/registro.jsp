<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Crear cuenta</title>
    </head>
    <body>
        <h1>Crear cuenta</h1>

        <% if (request.getAttribute("error") != null) { %>
        <p><%=request.getAttribute("error")%></p>
        <% } %>

        <form method="POST" action="<%=request.getContextPath()%>/RegistroServlet">
            <p>
                <label for="nombres">Nombres</label><br>
                <input type="text" name="nombres" id="nombres">
            </p>
            <p>
                <label for="apellidos">Apellidos</label><br>
                <input type="text" name="apellidos" id="apellidos">
            </p>
            <p>
                <label for="email">Email</label><br>
                <input type="email" name="email" id="email">
            </p>
            <p>
                <label for="password">Contraseña</label><br>
                <input type="password" name="password" id="password">
            </p>
            <button type="submit">Registrarse</button>
        </form>

        <p><a href="<%=request.getContextPath()%>/LoginServlet">Regresar</a></p>
    </body>
</html>