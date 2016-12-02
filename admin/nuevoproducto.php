<?php include "../php/config.php" ?>

<?php
    
$conexion = mysqli_connect($servidor, $usuario, $contrasena, $baseDeDatos);
mysqli_set_charset($conexion, "utf8");
$peticion = 
    "INSERT INTO productos VALUES (
        NULL, 
        '".$_POST['nombre']."',
        ' ',
        '".$_POST['precio']."',
        '".$_POST['existencias']."',
        '".$_POST['activado']."',
        '".$_POST['peso']."',
        '".$_POST['ancho']."',
        '".$_POST['alto']."',
        '".$_POST['largo']."'
    )";
$resultado = mysqli_query($conexion, $peticion);

$peticion = "SELECT * FROM productos ORDER BY id DESC LIMIT 1)";
$resultado = mysqli_query($conexion, $peticion);

while($fila = mysqli_fetch_array($resultado)){
    $id = $fila['id'];
}

move_uploaded_file($_FILES['imagen']['tmp_name'],"../photo/".$_FILES['imagen']['name']);

$peticion = 
    "INSERT INTO imagenesproductos VALUES (
        NULL,
        ' ".$id." ',
        ' ".$_FILES['imagen']['name']." ',
        ' ',
        ' '
    )";
$resultado = mysqli_query($conexion, $peticion);

mysqli_close($conexion);

?>
<script type="text/javascript">
   window.location="productos.php"
</script>