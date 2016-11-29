<table border=1>
<?php
    
$conexion = mysqli_connect("localhost", "tienda", "tienda", "tiendaonline");
mysqli_set_charset($conexion, "utf8");
$peticion = 
    "SELECT pedidos.id AS idpedido, fecha, estado, nombre, apellidos FROM pedidos LEFT JOIN clientes ON pedidos.idcliente = clientes.id ORDER BY estado,fecha ASC";
$resultado = mysqli_query($conexion, $peticion);

while($fila = mysqli_fetch_array($resultado)){
    $estado = $fila['estado'];
    
    switch($estado){
        case 0: $elEstadoEs = "Pendiente";
            break;
        case 1: $elEstadoEs = "Servido";
            break;
        case 1: $elEstadoEs = "Cancelado";
            break;
    }
    
    echo '<tr ';            
            switch($estado){
                case 0: echo ' style="background: rgb(255,200,200);"';
                    break;
                case 1: echo ' style="background: rgb(200,255,200);"';
                    break;
                case 1: echo ' style="background: rgb(255,255,200);"';
                    break;
            }
        echo '>
            <td>'.$fila['nombre']." ".$fila['apellidos'].'</td>
            <td>'.date("M d Y H:i:s", $fila['fecha']).'</td>
            <td>'.$elEstadoEs.'</td>
            <td><a href="gestionpedido.php?id='.$fila['idpedido'].'"><button>Gestionar</button></a></td>
            <td><a href="../php/pedidoservido.php?id='.$fila['idpedido'].'"><button>Pedido Servido</button></a></td>
            <td><a href="../php/cancelarpedido.php?id='.$fila['idpedido'].'"><button>Cancelar Pedido</button></a></td>
        </tr>';
}
mysqli_close($conexion);

?>
</table>

