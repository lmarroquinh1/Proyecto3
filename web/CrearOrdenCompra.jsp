<%-- 
    Document   : CrearOrdenCompra
    Created on : 27/10/2020, 04:03:19 PM
    Author     : Alvarado Montes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body bgcolor="#893546" text="#FFFFFF"
	link="#25B01A" vlink="#1A2CB0" alink="#E50A0A">
        
        <h1>Agregar Orden de compra</h1>
        <form action="CrearOrdenCompra.jsp" method="POST">
            <div class="form-group">
              <label for="idCliente">Cliente: </label>
              <input type="text" class="form-control" id="idCliente" name="idCliente" aria-describedby="emailHelp">              
            </div>            
            <div class="form-group">
              <label for="idProducto">Producto: </label>
              <input type="text" class="form-control" id="idProducto" name="idProducto" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="precioEnvio">Precio envio: </label>
              <input type="text" class="form-control" id="precioEnvio" name="precioEnvio" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="tipoEnvio">Tipo envio: </label>
              <input type="text" class="form-control" id="tipoEnvio" name="tipoEnvio" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="estado">Estado: </label>
              <input type="text" class="form-control" id="estado" name="estado" aria-describedby="emailHelp">
            </div>
            <button type="submit" class="btn btn-primary">Agregar</button>
            <button type="submit" class="btn btn-primary">Modificar</button>
            <button type="submit" class="btn btn-primary">Eliminar</button>
        </form>
        
        //alerta alerta
        <div class="alert alert-success" role="alert">
                La compra fue agregada correctamente<a href="ListaOrdenCompra.jsp" class="alert-link">Ver reporte de compra</a>.
            </div>
        
         <form action="MenuPrincipal.jsp">
          <button type="submit" class="btn btn-secondary">Regresar al Menu</button>
        </form>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>
