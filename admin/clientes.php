<meta charset="UTF-8">
<table border=1>
<?php
    
$conexion = mysqli_connect("localhost", "tienda", "tienda", "tiendaonline");
mysqli_set_charset($conexion, "utf8");
$peticion = "SELECT * FROM clientes";
$resultado = mysqli_query($conexion, $peticion);

while($fila = mysqli_fetch_array($resultado)){
    
    echo '<tr>';
    echo '
        <form action="actualizarcliente.php?id='.$fila['id'].'" method="POST">        
            <td><input type="text" name="nombre" value="'.$fila['nombre'].'">
                <input type="text" name="apellidos" value="'.$fila['apellidos'].'">            
            </td>
            <td><input type="text" name="email"              value="'.$fila['email'].'"></td>
            <td><input type="text" name="usuario"           value="'.$fila['usuario'].'"></td>
            <td><input type="text" name="contrasena"     value="'.$fila['contrasena'].'">
            <td><input type="text" name="telefono"          value="'.$fila['telefono'].'"></td>
            <td><input type="text" name="calle"               value="'.$fila['calle'].'"></td>
            <td><input type="text" name="codigopostal"  value="'.$fila['codigopostal'].'"></td>
            <td><input type="text" name="pais"                value="'.$fila['pais'].'"></td>
            <td><input type="text" name="estado"            value="'.$fila['estado'].'"></td>
            <td><input type="text" name="ciudad"            value="'.$fila['ciudad'].'"></td>
            
            <td><input type="submit"                                 value="Actualizar"></td>
        </form>
            <td><a href="eliminarcliente.php?id='.$fila['id'].'"><button>Eliminar</button></a></td>
    </tr>';
}
mysqli_close($conexion);
?>

<tr>
    <form action="nuevocliente.php" method="POST">
        <td><input type="text" name="nombre">
            <input type="text" name="apellidos">            
        </td>
        <td><input type="text" name="email"></td>
        <td><input type="text" name="usuario"></td>
        <td><input type="text" name="contrasena">
        <td><input type="text" name="telefono"    ></td>
        <td><input type="text" name="calle"      ></td>
        <td><input type="text" name="codigopostal"></td>
        <td><input type="text" name="pais"      ></td>
        <td><input type="text" name="estado"    ></td>
        <td><input type="text" name="ciudad"    ></td>
        <td><input type="submit"> </td>
        <td></td>
    </form>
</tr>
</table>