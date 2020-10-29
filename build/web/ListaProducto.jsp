<%-- 
    Document   : ListaProducto
    Created on : 27/10/2020, 02:11:06 PM
    Author     : Alvarado Montes
--%>
<%@page import="java.util.List"%>
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
    <body>
        <h1>Reporte de Productos</h1>
        <table class="table table-striped">
            <thead class="thead-dark">
              <tr>
                <th scope="col">id</th>
                <th scope="col">Codigo</th>
                <th scope="col">Nombre</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Precio</th>
              </tr>
            </thead>
            <%
              InformacionDAO informacionDao = new InformacionDAO(); 
              List<Producto> productos=informacionDao.getDBProducto(); 
              int i=0;
              for( Producto producto : productos){
                i++;
              %>
              
                <th scope="row"><%=i%></th>
                <td><%=producto.getCodigo()%></td> 
                <td><%=producto.getNombreProducto()%></td>
                <td><%=producto.getCantidad()%></td>
                <td><%=producto.getPrecio()%></td>
              
              <% 
               }
              %>
            </table>
        <form action="MenuPrincipal.jsp">
          <button type="submit" class="btn btn-secondary">Regresar al menu</button>
        </form>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>
