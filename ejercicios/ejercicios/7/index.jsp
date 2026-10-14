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
        <div><img src="../../img/javalog2.png" width="400px" alt="Logo"></div>
        <div><a href="../../index.jsp" class="btn btn-outline-light rounded-pill">Inicio</a></div>
    </div>

    <div class="d-flex justify-content-center align-items-center container flex-grow-1">
        <div class="container p-5 bg-white shadow-lg m-3 rounded d-flex justify-content-center align-items-center flex-column">
            
            <h3 class="mb-4 text-center border-bottom pb-3">c:forTokens Demo</h3>
            
            <%-- Formulario en el cual solicitaremos dos datos: texto y delimitador --%>
            <form role="form" name="forTokensForm" action="ResultTokens.jsp" method="POST" class="w-100" style="max-width: 400px;">
                <div class="form-group m-3">
                    <label for="delimText" class="fw-bold mb-2">Introduzca un texto con delimitador:</label>
                    <input type="text" class="form-control rounded-pill" name="delimText" id="delimText" placeholder="Ej: Java,Python,C++,PHP">
                </div>
                <div class="form-group m-3">
                    <label for="delim" class="fw-bold mb-2">Introduzca el delimitador:</label>
                    <input type="text" class="form-control rounded-pill" id="delim" name="delim" placeholder="Ej: ,">
                </div>
                <div class="d-flex justify-content-center mt-4">
                    <input type="submit" class="btn btn-outline-info rounded-pill px-4" value="Tokenize (Separar)">
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