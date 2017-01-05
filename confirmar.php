<?php include "php/header.php" ?>
<br>
¿Ya eres usuario?<br>

<form action="php/logcliente.php" method="POST">
    <input type="text" name="usuario" placeholder="Name">
    <input type="text" name="contrasena" placeholder="Pass">
    <br>
    <input type="submit">
</form>

¿Eres nuevo usuario?<br>
<form action="php/nuevologclienteweb.php" method="POST">
    <input type="text" name="usuario" placeholder="usuario"><br>
    <input type="text" name="contrasena" placeholder="contraseña"><br>
    <input type="text" name="nombre" placeholder="nombre"><br>
    <input type="text" name="apellidos" placeholder="apellidos"><br>
    <input type="text" name="email" placeholder="email"><br>
    
    <label for="transferencia">Transferencia Bancaria</label>
    <input type="radio" id="transferencia" name="pago" value="transferencia">
    
    <label for="paypal">PayPal</label>
    <input type="radio" id="paypal" name="pago" value="paypal"> 
    
    <label for="tarjeta">Tarjeta de Creito/Debito</label>
    <input type="radio" id="tarjeta" name="pago" value="tarjeta">
    <input type="submit">
    
</form>


<?php include "php/footer.php" ?>