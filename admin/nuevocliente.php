<?php include "../php/config.php" ?>

<?php
    
$conexion = mysqli_connect($servidor, $usuario, $contrasena, $baseDeDatos);
mysqli_set_charset($conexion, "utf8");
$peticion = 
    "INSERT INTO clientes VALUE (
        NULL
        , '".$_POST['nombre']."'
        , '".$_POST['apellidos']."'
        , '".$_POST['email']."'
        , '".$_POST['usuario']."'
        , '".$_POST['contrasena']."'
        , '".$_POST['telefono']."'
        , '".$_POST['calle']."'
        , '".$_POST['codigopostal']."'
        , '".$_POST['pais']."'
        , '".$_POST['estado']."'
        , '".$_POST['ciudad']."')";
$resultado = mysqli_query($conexion, $peticion);

mysqli_close($conexion);
?>
<script type="text/javascript">
    window.location="clientes.php"
</script>