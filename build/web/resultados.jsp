<%-- 
    Document   : resultados
    Created on : 21-may-2020, 12:40:06
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
        <h1>Tus resultados</h1>
        
        <% 
        
        //debemos leer la cookie
        Cookie[] obtenerCookie=request.getCookies();
        
        //aqui vamos a analizar las cookies y ver las prefencias
        
        String ciudad="Mexico";//establecemos una ciudad por defecto
        
        if(obtenerCookie!=null){//condicional pàra identificar la cookie tenga datos
            for(Cookie c: obtenerCookie){//recorremos las cookies existentes
                if("index.preferencias_ciudad".equals(c.getName())){//identificamos en el string el nombre de cookie que establecimos y lo comparamos con los resultados de las cookies
                    ciudad=c.getValue();//si hay coincidencia establecmos la ciudad de preferencia
                }
            }
        }
        
        %>
        
        
        <h2>vuelos disponibles para la ciudad: <%= ciudad %></h2>
        <p>texto de ejemplo</p>
        <p>texto de ejemplo</p>
        <p>texto de ejemplo</p>
        
         <h2>hoteles disponibles para la ciudad: <%= ciudad %></h2>
        <p>texto de ejemplo</p>
        <p>texto de ejemplo</p>
        <p>texto de ejemplo</p>
        
         <h2>descuentos disponibles para la ciudad: <%= ciudad %></h2>
        <p>texto de ejemplo</p>
        <p>texto de ejemplo</p>
        <p>texto de ejemplo</p>
    </body>
</html>
