<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>A_Fabrica</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <link rel="stylesheet" type="text/css" href="Login.css" href="@{/Login.css}">
</head>
<body>
</div>
<div class="modal-dialog text-center">
    <h1><p style="color:white">Area de Fábrica</p></h1></br>
        <div class="modal-content">
            <div class="col-12 user-img">
                <img src="Recursos/Imagenes/AvatarMadera.png"/>
            </div>
            <div class="col-12">
                <H5>MI MUEBLERIA.</H5><br><br>
                <H5>Seleccione una opción: </H5><br>
            </div>
            <form>
                <button type="submit" class="btn btn-warning"><i class="fas fa-sign-in-alt"></i><a href="Crear_UsuarioBD.jsp">  Ver Materia Prima</a></button></br></br>
                <button type="submit" class="btn btn-warning"><i class="fas fa-sign-in-alt"></i><a href="Muebles_Ensamblados.jsp">  Ver Muebles Ensamblados.</a></button></br></br>
                <button type="submit" class="btn btn-warning"><i class="fas fa-sign-in-alt"></i><a href="Cargar_Datos.jsp">  Ver Tipos de Muebles Fabricados.</a></button></br></br>
                <button type="submit" class="btn btn-warning"><i class="fas fa-sign-in-alt"></i><a href="Login.jsp">  Salir.</a></button></br></br>
            </form>
        </div>
</div>
</body>
</html>
