<?php include "cabecera.php"?>
<?php include "../php/config.php" ?>

<table>
<?php
    
$conexion = mysqli_connect($servidor, $usuario, $contrasena, $baseDeDatos);
mysqli_set_charset($conexion, "utf8");
$peticion = "SELECT * FROM productos";
$resultado = mysqli_query($conexion, $peticion);

while($fila = mysqli_fetch_array($resultado)){
    
    echo '<tr>';
    echo '
        <form action="actualizarproducto.php?id='.$fila['id'].'" method="POST">        
            <td><input type="text" name="nombre" value="'.$fila['nombre'].'"></td>
            <td><input type="text" name="precio" value="'.$fila['precio'].'"></td>
            <td><input type="text" name="peso" value="'.$fila['peso'].'"></td>
            <td><input type="text" name="ancho" value="'.$fila['ancho'].'"> x 
                <input type="text" name="alto" value="'.$fila['alto'].'"> x 
                <input type="text" name="largo" value="'.$fila['largo'].'"></td>
            <td><input type="text" name="existencias" value="'.$fila['existencias'].'"></td>
            <td><input type="text" name="activado" value="'.$fila['activado'].'"></td>
            <td><input type="submit" value="Actualizar"></td>

        </form>
            <td><a href="eliminarproducto.php?id='.$fila['id'].'"><button>Eliminar</button></a></td>
    </tr>';
}
mysqli_close($conexion);
?>

<tr>
    <form action="nuevoproducto.php" method="POST" enctype="multipart/form-data">
        <td><input type="text" name="nombre"> </td>
        <td><input type="text" name="precio"> </td>
        <td><input type="text" name="peso"> </td>
        <td><input type="text" name="largo">x<input type="text" name="ancho">x<input type="text" name="alto"> </td>
        <td><input type="text" name="existencias"> </td>
        <td><input type="text" name="activado"> </td>
        <td><input type="file" name="imagen"></td>
        <td><input type="submit"></td>
    </form>
</tr>
</table>
<?php include "piedepagina.php"?>