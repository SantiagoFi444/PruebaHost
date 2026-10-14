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
    <link rel="stylesheet" href="css/estilo.css">
    <title>Ejemplo JSTL</title>
</head>
<body class="d-flex flex-column justify-content-center align-items-center bg-light">
    
    <div id="encabezado" class="bg-dark p-3 mb-3 d-flex flex-row justify-content-around align-items-center w-100">
        <div>
            <img src="img/javalog2.png" width="400px" alt="Logo Java">
        </div>
        <div>
            <a href="index.jsp" class="btn btn-outline-light rounded-pill">Inicio</a>
        </div>
    </div>

    <div id="ejercicios" class="p-3 mb-2 bg-light d-flex flex-column container">
        <h1 class="text-center mb-4">Ejercicios JSTL</h1>
        
        <!-- Menú de botones -->
        <div class="d-flex flex-row flex-wrap justify-content-center gap-3 container">
            
            <!-- Botón Ejercicio 1 (Modal) -->
            <button data-bs-toggle="modal" data-bs-target="#Ejercicio01" class="btn btn-outline-dark rounded-pill">
                <div class="tit p-2">
                    <h4 class="m-0">Ejercicio 1</h4>
                </div>
            </button>

            <!-- Botones Ejercicios 2 al 9 (Enlaces) -->
            <a href="ejercicios/2/index.jsp" class="btn btn-outline-dark rounded-pill text-decoration-none">
                <div class="tit p-2"><h4 class="m-0">Ejercicio 2</h4></div>
            </a>
            <a href="ejercicios/3/index.jsp" class="btn btn-outline-dark rounded-pill text-decoration-none">
                <div class="tit p-2"><h4 class="m-0">Ejercicio 3</h4></div>
            </a>
            <a href="ejercicios/4/index.jsp" class="btn btn-outline-dark rounded-pill text-decoration-none">
                <div class="tit p-2"><h4 class="m-0">Ejercicio 4</h4></div>
            </a>
            <a href="ejercicios/5/index.jsp" class="btn btn-outline-dark rounded-pill text-decoration-none">
                <div class="tit p-2"><h4 class="m-0">Ejercicio 5</h4></div>
            </a>
            <a href="ejercicios/6/index.jsp" class="btn btn-outline-dark rounded-pill text-decoration-none">
                <div class="tit p-2"><h4 class="m-0">Ejercicio 6</h4></div>
            </a>
            <a href="ejercicios/7/index.jsp" class="btn btn-outline-dark rounded-pill text-decoration-none">
                <div class="tit p-2"><h4 class="m-0">Ejercicio 7</h4></div>
            </a>
            <a href="ejercicios/8/index.jsp" class="btn btn-outline-dark rounded-pill text-decoration-none">
                <div class="tit p-2"><h4 class="m-0">Ejercicio 8</h4></div>
            </a>
            
        </div>
    </div>

    <%-- MODAL EJERCICIO 1 --%>
    <div class="modal fade" id="Ejercicio01" tabindex="-1" aria-labelledby="feedbackModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header p-4">
                    <h5 class="modal-title font-alt text-black" id="feedbackModalLabel">Primer ejemplo con JSTL</h5>
                    <button class="btn btn-outline-dark rounded-pill" type="button" data-bs-dismiss="modal">X</button>
                </div>
                <div class="modal-body border-0 p-4">
                    <p class="text-center">Cadena de caracteres: <strong><c:out value="1+2+3"/></strong></p>
                    <p class="text-center">Suma de valores: <strong><c:out value="${1+2+3}"/></strong></p>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white w-100 mt-auto">
        <div class="bg-dark align-items-center p-5">
            <p class="text-center m-0">Derechos reservados || Paula Andrea Hurtado Vega & James Ricardo Amaya Cardenas</p>
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/js/bootstrap.min.js"></script>
</body>
</html>