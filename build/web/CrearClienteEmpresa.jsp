<%-- 
    Document   : CrearClienteEmpresa
    Created on : 26/10/2020, 01:06:03 PM
    Author     : Alvarado Montes 
--%>
<%@page import="modelo.Empresa"%>
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
        
        <h1>Agregar nuevos clientes</h1>
        <% 
            String nombre = request.getParameter("nombre"); 
            String apellido = request.getParameter("apellido");
            String direccion = request.getParameter("direccion");
            String contacto = request.getParameter("contacto");
            String descuento = request.getParameter("descuento");
            if(nombre==null && apellido==null && direccion==null && contacto==null && descuento==null){ 
            
        %>
        <form action="CrearClienteEmpresa.jsp" method="POST">
            <div class="form-group">
              <label for="nombre">Nombre: </label>
              <input type="text" class="form-control" id="nombre" name="nombre" aria-describedby="emailHelp">              
            </div>            
            <div class="form-group">
              <label for="apellido">Apellido: </label>
              <input type="text" class="form-control" id="apellido" name="apellido" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="direccion">Dirección: </label>
              <input type="text" class="form-control" id="direccion" name="direccion" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="contacto">Contacto: </label>
              <input type="text" class="form-control" id="contacto" name="contacto" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="descuento">Descuento: </label>
              <input type="text" class="form-control" id="descuento" name="descuento" aria-describedby="emailHelp">
            </div>
            <button type="submit" class="btn btn-primary">Agregar</button>
            <button type="submit" class="btn btn-primary">Modificar</button>
            <button type="submit" class="btn btn-primary">Eliminar</button>
        </form>
        <%
            }
              else{
                InformacionDAO informacionDao = new InformacionDAO(); 
                Empresa empresa = new Empresa(nombre, apellido, direccion, contacto, Integer.parseInt(descuento)); 
                informacionDao.guardarEmpresa(empresa);
            %>
        
        <div class="alert alert-success" role="alert">
                El cliente fue agregado correctamente<a href="ListaClienteEmpresa.jsp" class="alert-link">Ver reporte de clientes</a>. 
            </div>
        <%
         }%>
         <form action="MenuPrincipal.jsp">
          <button type="submit" class="btn btn-secondary">Regresar Menu</button>
        </form>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>
