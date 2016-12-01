<?php
    
$conexion = mysqli_connect("localhost", "tienda", "tienda", "tiendaonline");
mysqli_set_charset($conexion, "utf8");
$peticion = "
        UPDATE clientes SET 
            nombre='".$_POST['nombre']."',
            apellidos='".$_POST['apellidos']."',
            email='".$_POST['email']."',
            usuario='".$_POST['usuario']."',
            contrasena='".$_POST['contrasena']."',
            telefono='".$_POST['telefono']."',
            calle='".$_POST['calle']."',
            codigopostal='".$_POST['codigopostal']."',
            pais='".$_POST['pais']."',
            estado='".$_POST['estado']."',
            ciudad='".$_POST['ciudad']."'
        WHERE id=".$_GET['id']."
";
$resultado = mysqli_query($conexion, $peticion);

mysqli_close($conexion);
?>
<script type="text/javascript">
   window.location="clientes.php"
</script>