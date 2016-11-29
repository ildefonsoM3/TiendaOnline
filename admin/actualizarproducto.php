<?php
    
$conexion = mysqli_connect("localhost", "tienda", "tienda", "tiendaonline");
mysqli_set_charset($conexion, "utf8");
$peticion = "
        UPDATE productos SET 
            nombre='".$_POST['nombre']."',
            precio='".$_POST['precio']."',
            existencias='".$_POST['existencias']."',
            activado='".$_POST['activado']."',
            peso='".$_POST['peso']."',
            ancho='".$_POST['ancho']."',
            alto='".$_POST['alto']."',
            largo='".$_POST['largo']."'
        WHERE id=".$_GET['id']."
";
$resultado = mysqli_query($conexion, $peticion);

mysqli_close($conexion);
?>
<script type="text/javascript">
   window.location="productos.php"
</script>