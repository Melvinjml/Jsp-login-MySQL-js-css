<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession objSession = request.getSession(false);
    String usuario = (String) objSession.getAttribute("usuario");
    if (session.getAttribute("usuario") != null) {
            usuario = session.getAttribute("usuario").toString();
        }else{
    
        out.print("<script>location.replace('index.jsp');</script>");
    }
    
%>


<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        
        <title>INICIO</title>
        <link href="css/demo.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <div class="container">
            
            <div class="codrops-top clearfix">
                <a class="codrops-icon codrops-icon-prev" href="#"><span> Usuario: <% out.print(usuario); %></span></a>
                <span class="right"><a class="codrops-icon codrops-icon-drop" href="SVcerrarSesion?cerrarS=true"><span>Cerrar Sesion</span></a></span>
            </div>
            <header>
                <h1> WELCOME <%out.print(usuario);%></h1>
            </header>
            
        </div>
        
    </body>
</html>

