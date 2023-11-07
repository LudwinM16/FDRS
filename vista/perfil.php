<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../vista/CSS/menu-all.css">
    <link rel="stylesheet" type="text/css" href="../vista/CSS/nombre.css">
    <link rel="stylesheet" type="text/css" href="../vista/CSS/footer.css">
    <script type="text/javascript" src="../vista/js/confirmacion.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <title>FDRS</title>
</head>
<body>

<?php 
    require "../modelo/claseConexion.php"; 
    session_start();
    //$rel = $_SESSION['relacion'];
    if (!empty($_SESSION)) {
?>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="../index.php"><img src="img/FDRSlog.png" alt="Logo"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="../index.php">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ayuda.php">Ayuda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="mensajes.php">Mensajes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="perfil.php">Cuenta</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-4">
        <div class="row">
           
            
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
				<img src="https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png" alt="avatar"
              class="rounded-circle img-fluid" style="width: 150px;">
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title mb-4">Relación <b><?php echo $_SESSION['relacion']; ?></b></h2>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tr>
                                <th>ID</th>
                                <td><?php echo $_SESSION['idUsuario']; ?></td>
                            </tr>
                            <tr>
                                <th>Nombre (Apellido, Nombre)</th>
                                <td><?php echo $_SESSION['ape'] . ', ' . $_SESSION['nombre']; ?></td>
                            </tr>
                            <tr>
                                <th>Relación</th>
                                <td><?php echo $_SESSION['relacion']; ?></td>
                            </tr>
                            <tr>
                                <th>Teléfono</th>
                                <td><?php echo $_SESSION['telefono']; ?></td>
                            </tr>
                            <tr>
                                <th>Correo Electrónico</th>
                                <td><?php echo $_SESSION['correo']; ?></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

            </div>
        </div>
    </div>

    <div class="salir">
        <a onclick="return confirmar();" href="log out.php"><h2>Cerrar Sesión</h2></a>
    </div>

<?php
    } else {
?>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="../index.php"><img src="img/FDRSlog.png" alt="Logo"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="../index.php">Inicio</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-4">
        <div class="row">
            <div class="col">
                <div class="alert alert-warning" role="alert">
                    Para acceder a esta página, debes iniciar sesión.
                </div>
            </div>
        </div>
    </div>

<?php
    }
?>

<footer>
    <div class="contenedor-footer">
        <div class="content-footer">
            <h4>Página principal</h4>
            <p><a href="../index.php">Inicio</a></p>
        </div>
        <div class="content-footer">
            <h4>Email</h4>
            <p>fdrs@gmail.com</p>
        </div>
        <div class="content-footer">
            <h4>Sitio web del CDB</h4>
            <p><a href="https://www.cdb.edu.sv/" target="blank">CDB</a></p>
        </div>
    </div>

    <h2 class="titulo-final">&copy; Sistema FDRS para el CDB | SEND</h2>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
