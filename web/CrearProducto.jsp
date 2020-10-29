<%-- 
    Document   : CrearProducto
    Created on : 27/10/2020, 01:50:23 PM
    Author     : Alvarado Montes
--%>
<%@page import="modelo.Producto"%> 
<%@page import="utilerias.InformacionDAO"%>
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
        
        <h1>Agregar nuevos productos</h1>
        <% 
            String codigo = request.getParameter("codigo");
            String nombreProducto = request.getParameter("nombreProducto");
            String cantidad = request.getParameter("cantidad");
            String precio = request.getParameter("precio");
            if(codigo==null && nombreProducto==null && cantidad==null && precio==null){ 
            
        %>
        <form action="CrearProducto.jsp" method="POST">
            <div class="form-group">
              <label for="codigo">Codigo: </label>
              <input type="text" class="form-control" id="codigo" name="codigo" aria-describedby="emailHelp">              
            </div>            
            <div class="form-group">
              <label for="nombreProducto">Nombre: </label>
              <input type="text" class="form-control" id="nombreProducto" name="nombreProducto" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="cantidad">Cantidad: </label>
              <input type="text" class="form-control" id="cantidad" name="cantidad" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="precio">Precio: </label>
              <input type="text" class="form-control" id="precio" name="precio" aria-describedby="emailHelp">
            </div>
            <button type="submit" class="btn btn-primary">Agregar</button>
            <button type="submit" class="btn btn-primary">Modificar</button>
            <button type="submit" class="btn btn-primary">Eliminar</button>
        </form>
        <%
            }
              else{
                InformacionDAO informacionDao = new InformacionDAO(); 
                Producto producto = new Producto(Integer.parseInt(codigo), nombreProducto, Integer.parseInt(cantidad), Double.parseDouble(precio)); 
                informacionDao.guardarProducto(producto); 
             %>
        <div class="alert alert-success" role="alert">
                El producto fue agregado correctamente<a href="ListaProducto.jsp" class="alert-link">Ver reporte de productos</a>.
            </div>
        <%
         }%>
         <form action="MenuPrincipal.jsp">
          <button type="submit" class="btn btn-secondary">Regresar al Menu</button>
        </form>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>
