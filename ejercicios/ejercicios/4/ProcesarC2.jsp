<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
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
<body class="d-flex flex-column justify-content-center align-items-center bg-light min-vh-100">
    <div id="encabezado" class="bg-dark mb-3 w-100 d-flex flex-row justify-content-around align-items-center p-3">
        <div><img src="../../img/javalog2.png" width="400px"></div>
        <div><a href="index.jsp" class="btn btn-outline-light rounded-pill">Atrás</a></div>
    </div>
    
    <div class="container d-flex flex-row justify-content-center align-items-center flex-grow-1">
        <div class="me-4 d-none d-md-block">
            <!-- Imagen decorativa opcional referenciada en la guía -->
            <img src="../../img/persona.png" width="300px" alt="Persona">
        </div>
        <div class="container bg-white shadow-lg d-flex justify-content-center flex-column p-5 rounded text-center">
            <div class="panel panel-primary">
                <div class="panel-heading mb-3"><h4 class="fw-bold border-bottom pb-2">Resultado</h4></div>
                <div class="panel-body fs-5 mt-3">
                    
                    <%-- ESTRUCTURA CHOOSE - WHEN - OTHERWISE --%>
                    <c:choose>
                        <c:when test="${param.lenguaje == 'Java'}">
                            <p class="text-success fw-bold">El rey de los lenguajes orientados a objetos</p>
                        </c:when>
                        
                        <c:when test="${param.lenguaje == 'C++'}">
                            <p class="text-info fw-bold">Ideal para aprender</p>
                        </c:when>
                        
                        <c:when test="${param.lenguaje == 'Perl'}">
                            <p class="text-warning fw-bold">Lenguaje de scripting muy potente</p>
                        </c:when>
                        
                        <c:otherwise>
                            <p class="text-danger fw-bold">No se seleccionó ninguno</p>
                        </c:otherwise>
                    </c:choose>
                    
                </div>
            </div>
        </div>
    </div>
    
    <footer class="bg-dark text-white w-100 mt-auto">
        <div class="bg-dark align-items-center p-4">
            <p class="text-center m-0">Derechos reservados || Paula Andrea Hurtado Vega & James Ricardo Amaya Cardenas</p>
        </div>
    </footer>
</body>
</html>