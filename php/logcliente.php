<?php
    
include "header.php";

$contador = 0;
$conexion = mysqli_connect("localhost", "tienda", "tienda", "tiendaonline");
mysqli_set_charset($conexion, "utf8");
$peticion = "SELECT * FROM clientes WHERE usuario = '".$_POST['usuario']."' AND contrasena = '".$_POST['contrasena']."' ";
$resultado = mysqli_query($conexion, $peticion);

while($fila = mysqli_fetch_array($resultado)){
    $contador++;
    $_SESSION['usuario'] = $fila['id'];
}

if($contador > 0){
    $peticion = "INSERT INTO pedidos VALUES (NULL, ". $_SESSION['usuario'] . ", '" . date('U') . "', '0')";
    $resultado = mysqli_query($conexion, $peticion);
    
    $peticion = "SELECT * FROM pedidos WHERE idcliente = '" . $_SESSION['usuario'] . "' ORDER BY fecha DESC LIMIT 1";
    $resultado = mysqli_query($conexion, $peticion);
    
    while($fila = mysqli_fetch_array($resultado)){
        $_SESSION['idpedido'] = $fila['id'];
    }
    echo $_SESSION['idpedido'];
    
    for($i = 0;$i < $_SESSION['contador'];$i++){
        $peticion = 
            "INSERT INTO lineaspedido VALUES (NULL, '".$_SESSION['idpedido']."', '".$_SESSION['producto'][$i]."', '1')";
        $resultado = mysqli_query($conexion, $peticion);
        
/*Estas líneas anidadas en el for son para restar existencias a los productos*/
        $peticion = 
            "SELECT * FROM productos WHERE id = '".$_SESSION['producto'][$i]."' ";
        $resultado = mysqli_query($conexion, $peticion);
        while($fila = mysqli_fetch_array($resultado)){
            $existencias = $fila['existencias'];
            $peticionDos = 
                "UPDATE productos SET existencias = '".($existencias-1)."' WHERE id='".$_SESSION['producto'][$i]."' ";
            $resultadoDos = mysqli_query($conexion, $peticionDos);
        }
        
    }
    
    echo "<br>Tu pedido se ha realizado satisfactoriamente";
    session_destroy();
    echo '
        <meta http-equiv="refresh" content="3; url=../index.php">
    ';
    
}else {
    echo "El Usuario no existe";
    echo '
            <meta http-equiv="refresh" content="3; url=../confirmar.php">
        ';
    
}
mysqli_close($conexion);
include "footer.php";

?>