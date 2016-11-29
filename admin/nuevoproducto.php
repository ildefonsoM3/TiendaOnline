<?php
    
$conexion = mysqli_connect("localhost", "tienda", "tienda", "tiendaonline");
mysqli_set_charset($conexion, "utf8");
$peticion = 
    "INSERT INTO productos VALUE (
        NULL
        , '".$_POST['nombre']."'
        , ' '
        , '".$_POST['precio']."'
        , '".$_POST['existencias']."'
        , '".$_POST['activado']."'
        , '".$_POST['peso']."'
        , '".$_POST['ancho']."'
        , '".$_POST['alto']."'
        , '".$_POST['largo']."')";
$resultado = mysqli_query($conexion, $peticion);

mysqli_close($conexion);
?>
<script type="text/javascript">
    window.location="productos.php"
</script>