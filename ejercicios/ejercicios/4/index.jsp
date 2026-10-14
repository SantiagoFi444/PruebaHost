<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejemplo 4 JSTL</title>
</head>
<body class="d-flex flex-column justify-content-center bg-light min-vh-100">
    <div id="encabezado" class="bg-dark mb-3 w-100 d-flex flex-row justify-content-around align-items-center p-3">
        <div><img src="../../img/javalog2.png" width="400px" alt="Logo Java"></div>
        <div><a href="../../index.jsp" class="btn btn-outline-light rounded-pill">Inicio</a></div>
    </div>
    
    <div class="container d-flex justify-content-center align-items-center flex-grow-1">
        <div class="container d-flex justify-content-center align-items-center shadow-lg flex-column p-5 m-4 bg-white rounded">
            <h3 class="mb-4 text-center">Página de prueba del uso de choose, when y otherwise</h3>
            <form role="form" name="lenguaje" action="ProcesarC2.jsp" method="POST">
                <div class="form-group container d-flex justify-content-center align-items-center flex-column">
                    <label for="lenguaje" class="mb-2 fs-5">¿Cuál es tu lenguaje de programación favorito?</label>
                    <select name="lenguaje" id="lenguaje" class="form-select m-4 w-auto">
                        <option value="">--Seleccionar un Lenguaje--</option>
                        <option value="Java">Java</option>
                        <option value="C++">C++</option>
                        <option value="Perl">Perl</option>
                    </select>
                </div>
                <div class="d-flex justify-content-center align-items-center mt-3">
                    <input type="submit" class="btn btn-outline-info rounded-pill px-4" value="Enviar">
                </div>
            </form>
        </div>
    </div>
    
    <footer class="bg-dark text-white w-100 mt-auto">
        <div class="bg-dark align-items-center p-4">
            <p class="text-center m-0">Derechos reservados || Paula Andrea Hurtado Vega & James Ricardo Amaya Cardenas</p>
        </div>
    </footer>
</body>
</html>