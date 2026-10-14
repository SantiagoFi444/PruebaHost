<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<% int valor = 0; %> <%-- Declarando variable tipo int localmente --%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejemplo 5 JSTL</title>
</head>
<body class="d-flex flex-column justify-content-center align-items-center bg-light min-vh-100">
    
    <div id="encabezado" class="bg-dark mb-3 w-100 d-flex flex-row justify-content-around align-items-center p-3">
        <div><img src="../../img/javalog2.png" width="400px" alt="Logo"></div>
        <div><a href="../../index.jsp" class="btn btn-outline-light rounded-pill">Inicio</a></div>
    </div>

    <div class="container d-flex justify-content-center align-items-center flex-grow-1">
        <div class="container d-flex flex-column shadow-lg p-5 m-3 justify-content-center align-items-center bg-white rounded">
            
            <h3 class="mb-4">Captura de Excepciones con JSTL</h3>

            <%-- Toma y guarda el valor de parámetro. Si falla, el error va a 'error01' --%>
            <c:catch var="error01">
                <% 
                   // Intentamos convertir a entero un parámetro que viene por URL
                   valor = Integer.parseInt(request.getParameter("parametro")); 
                %>
            </c:catch>

            <%-- Condicional if: Si ocurrió un error (la variable error01 NO está vacía) --%>
            <c:if test="${not empty error01}">
                <div class="alert alert-danger text-center w-100">
                    <strong>Se produjo un error:</strong> ${error01}
                </div>
            </c:if>

            <%-- Condicional if: Si NO hubo error y el parámetro se convirtió con éxito --%>
            <c:if test="${empty error01 && param.parametro != null}">
                <div class="alert alert-info text-center w-100">
                    <strong>Valor recibido: <%= valor %></strong>
                </div>
            </c:if>

            <div class="d-flex flex-row flex-wrap justify-content-center mt-3 gap-2">
                <%-- Formulario botón 1 que envía parámetro con valor "prueba" (Generará error de texto) --%>
                <form role="form">
                    <input type="hidden" name="parametro" value="prueba"/>
                    <input type="submit" class="btn btn-outline-dark rounded-pill" value="Enviar 'prueba'"/>
                </form>

                <%-- Formulario botón 2 que envía parámetro con valor "1234" (Funcionará correctamente) --%>
                <form role="form">
                    <input type="hidden" name="parametro" value="1234"/>
                    <input type="submit" class="btn btn-outline-success rounded-pill" value="Enviar '1234'"/>
                </form>

                <%-- Formulario botón 3 que envía parámetro con valor nulo (Generará error de nulidad) --%>
                <form role="form">
                    <input type="submit" class="btn btn-outline-danger rounded-pill" value="No enviar el parámetro"/>
                </form>
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