<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Uso de c:set</title>
</head>
<body class="d-flex flex-column justify-content-center align-items-center bg-light" style="height: 100vh;">
    <div class="container p-5 bg-white shadow-lg text-center rounded">
        <h3 class="mb-4">Ejemplo de etiqueta &lt;c:set&gt; en JSTL</h3>
        
        <%-- Usando c:set para declarar y guardar variables estáticas --%>
        <c:set var="estudiante" value="Jesús Cucaita" />
        <c:set var="proyecto" value="Sistema de Control de Parqueadero" />
        <c:set var="institucion" value="Unidades Tecnológicas de Santander" />
        
        <div class="alert alert-info fs-5 text-start">
            <p>Estudiante asignado: <strong><c:out value="${estudiante}"/></strong></p>
            <p>Proyecto actual: <strong><c:out value="${proyecto}"/></strong></p>
            <p>Institución: <strong><c:out value="${institucion}"/></strong></p>
        </div>
        
        <a href="index.jsp" class="btn btn-outline-dark rounded-pill mt-3">Volver al formulario</a>
    </div>
</body>
</html>