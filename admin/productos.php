<table border=1>
<?php
    
$conexion = mysqli_connect("localhost", "tienda", "tienda", "tiendaonline");
mysqli_set_charset($conexion, "utf8");
$peticion = 
    "SELECT * FROM productos";
$resultado = mysqli_query($conexion, $peticion);

while($fila = mysqli_fetch_array($resultado)){
    
    echo '<tr ';
        echo '>
            <td>'.$fila['nombre'].'</td>
            <td>'.$fila['precio'].'</td>
            <td>'.$fila['peso'].'</td>
            <td>'.$fila['ancho'].' x '.$fila['alto'].' x '.$fila['largo'].'</td>
            <td>'.$fila['existencias'].'</td>
            <td>'.$fila['activado'].'</td>
            <td><a href="eliminarproducto.php?='.$fila['activado'].'"><button>Eliminar</button></a></td>
        </tr>';
}
mysqli_close($conexion);
?>

<tr>
    <form action="nuevoproducto.php" method="POST">
        <td><input type="text" name="nombre"> </td>
        <td><input type="text" name="precio"> </td>
        <td><input type="text" name="peso"> </td>
        <td><input type="text" name="largo">x<input type="text" name="ancho">x<input type="text" name="alto"> </td>
        <td><input type="text" name="existencias"> </td>
        <td><input type="text" name="activado"> </td>
        <td><input type="submit"> </td>
    </form>
</tr>
</table>