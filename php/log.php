<?php include "config.php" ?>

<?php
    
$conexion = mysqli_connect($servidor, $usuario, $contrasena, $baseDeDatos);
mysqli_set_charset($conexion, "utf8");
$peticion = 
    "INSERT INTO registros VALUE (
        ' ".date('U')." ',
        ' ".date('Y')." ',
        ' ".date('m')." ',
        ' ".date('d')." ',
        ' ".date('H')." ',
        ' ".date('i')." ',
        ' ".date('s')." ',
        '".$_SERVER['REMOTE_ADDR']."',
        '".$_SERVER['HTTP_USER_AGENT']."',
        '".$_SERVER['REQUEST_URI']."'
        )";
$resultado = mysqli_query($conexion, $peticion);

mysqli_close($conexion);
?>
