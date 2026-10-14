<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- Rutas relativas ajustadas para volver a la raíz -->
    <link rel="stylesheet" href="../../css/estilo.css">
    <link rel="shortcut icon" href="../../img/2.png" type="image/x-icon">
    <title>Ejemplo 2 JSTL</title>
</head>
<body class="d-flex flex-column justify-content-center alling-items-center bg-light">
    <div id="encabezado" class="bg-dark mb-3 d-flex flex-row justify-content-around align-items-center">
        <div>
            <img src="../../img/javalog2.png" width="400px">
        </div>
        <div>
            <a href="../../index.jsp" class="btn btn-outline-light rounded-pill">Inicio</a>
        </div>
    </div>
    
    <div class="d-flex justify-content-center align-items-center container">
        <div class="container p-5 bg-light shadow-lg m-3">
            <div class="row">
                <div class="lh-lg d-flex flex-column justify-content-center align-items-center m-3">
                    <h3>Datos personales</h3>
                    <form role="form" name="persona" action="ProcesarC.jsp" method="POST">
                        <div class="form-group m-3">
                            <label for="nombre">Ingrese su nombre:</label>
                            <input type="text" class="form-control rounded-pill" name="nombre" id="nombre" placeholder="Nombre">
                        </div>
                        <div class="form-group m-3">
                            <label for="apellido1">Ingrese su primer apellido:</label>
                            <input type="text" class="form-control rounded-pill" id="apellido1" name="apellido1" placeholder="Primer apellido">
                        </div>
                        <div class="form-group m-3">
                            <label for="apellido2">Ingrese su segundo apellido:</label>
                            <input type="text" class="form-control rounded-pill" id="apellido2" name="apellido2" placeholder="Segundo apellido">
                        </div>
                        <div class="d-flex justify-content-center align-items-center">
                            <input type="submit" class="btn btn-outline-info rounded-pill m-2" value="Enviar">
                            <a class="btn btn-outline-dark rounded-pill" href="set1.jsp">Ver uso set en JSTL</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <footer class="bg-dark text-white ">
        <div class=" bg-dark align-items-center p-5">
            <p class="text-center">Derechos reservados || Paula Andrea Hurtado Vega & James Ricardo Amaya Cardenas</p>
        </div>
    </footer>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/js/bootstrap.min.js"></script>
</body>
</html>