<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="../../WEB-INF/jspf/conexion.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejemplo 8 JSTL - Resultados</title>
</head>
<body class="bg-light min-vh-100 d-flex flex-column">

    <div id="encabezado" class="bg-dark mb-3 w-100 d-flex flex-row justify-content-around align-items-center p-3">
        <div><img src="../../img/javalog2.png" width="400px"></div>
        <div><a href="index.jsp" class="btn btn-outline-light rounded-pill">Atrás</a></div>
    </div>

    <%-- 1. Capturar los parámetros del formulario --%>
    <c:set var="nombres" value="${param.nombres}"/>
    <c:set var="apellido1" value="${param.apellido1}"/>
    <c:set var="apellido2" value="${param.apellido2}"/>
    <c:set var="edad" value="${param.edad}"/>

    <%-- 2. Ejecutar inserción en la base de datos --%>
    <sql:update var="insertar" dataSource="${empleados}">
        INSERT INTO empleados (nombres, apellido1, apellido2, edad) 
        VALUES ('${nombres}', '${apellido1}', '${apellido2}', '${edad}');
    </sql:update>

    <%-- 3. Mostrar la tabla con los registros --%>
    <div class="container flex-grow-1 d-flex justify-content-center align-items-start mt-4">
        <div class="container p-5 bg-white shadow-lg rounded">
            <h3 class="text-center mb-4 border-bottom pb-2">Registros en Base de Datos</h3>
            <div class="table-responsive">
                <table class="table table-dark table-striped table-hover text-center align-middle">
                    <thead>
                        <tr>
                            <th width="10%">ID</th>
                            <th width="40%">Nombre</th>
                            <th width="35%">Apellidos</th>
                            <th width="15%">Edad</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%-- Consultar todos los datos --%>
                        <sql:query var="result" scope="request" dataSource="${empleados}">
                            SELECT * FROM empleados;
                        </sql:query>
                        
                        <%-- Iterar sobre los resultados e imprimir las filas --%>
                        <c:forEach var="fila" items="${result.rows}">
                            <tr>
                                <td><c:out value="${fila.id}" /></td>
                                <td><c:out value="${fila.nombres}" /></td>
                                <td><c:out value="${fila.apellido1} ${fila.apellido2}" /></td>
                                <td><c:out value="${fila.edad}" /></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
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