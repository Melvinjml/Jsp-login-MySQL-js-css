<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Login |PRUEBA|</title>


        <link href="css/Estilo.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <div class="codrops-top clearfix">
                <a class="codrops-icon codrops-icon-prev"><span> USUARIO | PROYECTO </span></a>
                <span class="right"><a class="codrops-icon codrops-icon-drop" href="#"><span> HOME </span></a></span>
            </div>
            
        <div class="contenedor-form">
            <div class="toggle">
                <span>Crear Cuenta</span>
            </div>

            <div class="formulario">
                <h2>Iniciar Sesión</h2>
                <form action ="SVlogin">
                    <input type="text" placeholder="Usuario" name = "usuario" required>
                    <input type="password" placeholder="Contraseña" name = "password" required>
                    <input type="submit" value="Iniciar Sesión" name="btningresarlogin" >
                </form>
            </div>

            <div class="formulario">
                <h2>Crea tu Cuenta</h2>
                <form action ="SVregistrar" method="post">
                    <input type="text" placeholder="Usuario" name="usuario" required>

                    <input type="password" placeholder="Contraseña" name="password" required>

                    <input type="email" placeholder="Correo Electronico" name="email" required>

                    <input type="text" placeholder="Teléfono" name="tlf" required>

                    <input type="submit" value="Registrarse" id="btnregistrar">
                </form>
            </div>
            <div class="reset-password">
                <a href="#">Olvide mi Contraseña?</a>
            </div>

        </div>
        
        </div>
        
        <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="js/main.js" type="text/javascript"></script>
        
    </body>
</html>
