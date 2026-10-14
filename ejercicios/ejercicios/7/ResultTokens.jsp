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
    <title>Ejemplo 7 JSTL</title>
</head>
<body class="d-flex flex-column justify-content-center align-items-center bg-light min-vh-100">
    
    <div id="encabezado" class="bg-dark mb-3 w-100 d-flex flex-row justify-content-around align-items-center p-3">
        <div><img src="../../img/javalog2.png" width="400px"></div>
        <div><a href="index.jsp" class="btn btn-outline-light rounded-pill">Atrás</a></div>
    </div>

    <div class="container d-flex flex-row justify-content-center align-items-center flex-grow-1">
        <div class="container p-5 bg-white shadow-lg m-3 rounded text-center" style="max-width: 500px;">
            <div class="panel panel-primary">
                <div class="panel-heading mb-3"><h4 class="fw-bold border-bottom pb-2">Tus Tokens (Fragmentos)</h4></div>
                <div class="panel-body text-center fs-5 mt-4">
                    
                    <%-- Ciclo forTokens que ejecuta la delimitación --%>
                    <c:forTokens items="${param.delimText}" delims="${param.delim}" var="myToken">
                        <p class="bg-light border rounded p-2 mb-2"><c:out value="${myToken}"/></p>
                    </c:forTokens>
                    
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