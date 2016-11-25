<?php
    
$contador = 0;
$conexion = mysqli_connect("localhost", "tienda", "tienda", "tiendaonline");
mysqli_set_charset($conexion, "utf8");
$peticion = "SELECT * FROM clientes WHERE usuario = '".$_POST['usuario']."' AND contrasena = '".$_POST['contrasena']."' ";
$resultado = mysqli_query($conexion, $peticion);

while($fila = mysqli_fetch_array($resultado)){
    $contador++;
}

if($contador > 0){
    echo "El Usuario existe";
}else {
    echo "El Usuario no existe";
}
mysqli_close($conexion);

?>