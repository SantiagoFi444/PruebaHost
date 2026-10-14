<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
            <a href="index.jsp" class="btn btn-outline-light rounded-pill">Atras</a>
        </div>
    </div>
    
    <div class="container d-flex flex-row justify-content-center align-items-center">
        <div>
            <img src="../../img/persona.png" width="500px">
        </div>
        <div class="container bg-light shadow-lg d-flex justify-content-center p-5 m-5">
            <div class="row"> &nbsp;</div>
            <div class="panel panel-primary">
                <div class="panel-heading"><strong>Imprimiendo par&aacute;metros con JSTL</strong> </div>
                <div class="panel-body">
                    <!-- Llamado a los parámetros que recogimos en el formulario -->
                    <p class="text-center">Nombre: <strong><c:out value="${param.nombre}" /></strong></p>
                    <p class="text-center">Primer apellido: <strong><c:out value="${param.apellido1}" /></strong></p>
                    <p class="text-center">Segundo apellido: <strong><c:out value="${param.apellido2}"/></strong></p>
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