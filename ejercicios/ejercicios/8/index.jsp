<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="../../WEB-INF/jspf/conexion.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejemplo 8 JSTL</title>
</head>
<body class="d-flex flex-column justify-content-center align-items-center bg-light min-vh-100">
    <div id="encabezado" class="bg-dark mb-3 w-100 d-flex flex-row justify-content-around align-items-center p-3">
        <div><img src="../../img/javalog2.png" width="400px" alt="Logo"></div>
        <div><a href="../../index.jsp" class="btn btn-outline-light rounded-pill">Inicio</a></div>
    </div>
    
    <div class="d-flex justify-content-center align-items-center container flex-grow-1">
        <div class="container p-5 bg-white shadow-lg m-3 rounded">
            <div class="lh-lg d-flex flex-column justify-content-center align-items-center m-3">
                <h3 class="mb-4">Datos del Empleado</h3>
                <form role="form" name="persona" action="Procesarinfo.jsp" method="POST" class="w-100" style="max-width: 400px;">
                    <div class="form-group mb-3">
                        <label for="nombres" class="fw-bold">Ingrese su nombre:</label>
                        <input type="text" class="form-control rounded-pill" name="nombres" id="nombres" placeholder="Nombre" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="apellido1" class="fw-bold">Ingrese su primer apellido:</label>
                        <input type="text" class="form-control rounded-pill" id="apellido1" name="apellido1" placeholder="Primer apellido" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="apellido2" class="fw-bold">Ingrese su segundo apellido:</label>
                        <input type="text" class="form-control rounded-pill" id="apellido2" name="apellido2" placeholder="Segundo apellido">
                    </div>
                    <div class="form-group mb-4">
                        <label for="edad" class="fw-bold">Ingrese su edad:</label>
                        <input type="number" class="form-control rounded-pill" name="edad" id="edad" placeholder="Edad" required>
                    </div>
                    <div class="d-flex justify-content-center">
                        <input type="submit" class="btn btn-outline-info rounded-pill px-5" value="Enviar">
                    </div>
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