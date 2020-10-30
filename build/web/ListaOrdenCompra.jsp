<%-- 
    Document   : ListaOrdenCompra
    Created on : 27/10/2020, 04:10:28 PM
    Author     : Alvarado Montes
--%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Orden"%> 
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
        <h1>Reporte de Orden de Compra</h1>
        <table class="table table-striped">
            <thead class="thead-dark">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Id orden</th>
                <th scope="col">Id Cliente</th>
                <th scope="col">Id Producto</th>
                <th scope="col">Precio envio</th>
                <th scope="col">Tipo envio</th>
                <th scope="col">Estado</th>
                <th scope="col">Fecha orden</th>
                <th scope="col">Total</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
            <%
              InformacionDAO informacionDao = new InformacionDAO(); 
              List<Orden> ordenes=informacionDao.getDBOrden(); 
              int i=0;
              for( Orden orden : ordenes){  
                i++;
              %>
              <tr>
                <th scope="row"><%=i%></th>
                <td><%=orden.getIdOrden()%></td> 
                <td><%=orden.getIdCliente()%></td> 
                <td><%=orden.getIdProducto()%></td>
                <td><%=orden.getPrecioEnvio()%></td>
                <td><%=orden.getTipoEnvio()%></td>
                <td><%=orden.getEstado()%></td>
                <td><%=new java.util.Date()%></td> 
                <td><%=orden.getTotal()%></td>
                
                <th>
                    <a href="EliminarDatos.jsp?dpi=<%=orden.getIdCliente()%>&tipoCliente=individual">
                    <img src="Images/IconoEliminar.jpg" width="30" height="30"/>
                    </a>||
                    <a href="EliminarClienteIndividual.jsp?dpi=<%=orden.getIdCliente()%>?tipoCliente="<%="individual"%>>
                        <img src="Images/IconoEditar.png" width="30" height="30"/>
                    </a>
                </th>
                
              </tr>
              <% 
               }
              %> 
              </tbody>
            </table>
        <form action="MenuPrincipal.jsp">
          <button type="submit" class="btn btn-secondary">Regresar al menu</button>
        </form>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>
