<?php
    
$conexion = mysqli_connect("localhost", "tienda", "tienda", "tiendaonline");
mysqli_set_charset($conexion, "utf8");
$peticion = "DELETE FROM productos WHERE id=".$_GET['id']."";
$resultado = mysqli_query($conexion, $peticion);

mysqli_close($conexion);

?>
<script type="text/javascript">
    window.location="productos.php"
</script>