<%-- 
    Document   : preferencias_cookie.jsp
    Created on : 21-may-2020, 12:29:21
    Author     : JOZE RODRIGUEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <% 
        //aqui vamos a crear la cookie
        String ciudad=request.getParameter("ciudades");
        Cookie cookieuser=new Cookie("index.preferencias_ciudad", ciudad);
        //tiempo de duracion
        cookieuser.setMaxAge(365*24*60);
        //almacebamos la cooki en el servidor del cliente
        response.addCookie(cookieuser);
        
        %>
        <h1>ver las opciones disponible para la ciudad, gracias por tus preferencias</h1>
        <a href="resultados.jsp">ver resultados</a>
    </body>
</html>
