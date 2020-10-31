<%-- 
    Document   : CrearClienteEmpresa
    Created on : 26/10/2020, 01:06:03 PM
    Author     : Alvarado Montes 
--%>
<%@page import="Modelo.Empresa1"%>
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
        
        <h1>Editar Cliente de Tipo Empresa</h1>
        
        <% 
            String nombre = request.getParameter("nombre"); 
            String apellido = request.getParameter("apellido");
            String direccion = request.getParameter("direccion");
            String contacto = request.getParameter("contacto");
            String descuento = request.getParameter("descuento");
          if (request.getParameter("btnactualizar")!=null){
                InformacionDAO informacionDao = new InformacionDAO(); 
                Empresa1 empresa = new Empresa1(nombre, apellido, direccion, contacto, Integer.parseInt(descuento)); 
                informacionDao.actualizarEmpresa(empresa);
            %>
        <div class="alert alert-success" role="alert">
                El cliente fue editado correctamente<a href="ListaClienteEmpresa.jsp" class="alert-link">Ver reporte de clientes</a>. 
            </div>
        <%
         } else {
        %>
            
        
        <form action="">
            <div class="form-group">
              <label for="nombre">Nombre: (no editar este valor) </label>
              <input type="text" class="form-control" id="nombre" name="nombre" value="<%=nombre%>" aria-describedby="emailHelp">              
            </div>            
            <div class="form-group">
              <label for="apellido">Apellido: (no editar este valor) </label>
              <input type="text" class="form-control" id="apellido" name="apellido" value="<%=apellido%>" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="direccion">Dirección: </label>
              <input type="text" class="form-control" id="direccion" name="direccion" value="<%=direccion%>" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="contacto">Contacto: </label>
              <input type="text" class="form-control" id="contacto" name="contacto" value="<%=contacto%>" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="descuento">Descuento: </label>
              <input type="text" class="form-control" id="descuento" name="descuento" value="<%=descuento%>" aria-describedby="emailHelp">
            </div>
            <button type="submit" class="btn btn-primary" name="btnactualizar"  value="actualizar">Actualizar</button>
        </form>
        <%
            }
            %>

         <form action="MenuPrincipal.jsp">
          <button type="submit" class="btn btn-secondary">Regresar Menu</button>
        </form>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>