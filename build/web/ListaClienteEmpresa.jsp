<%-- 
    Document   : ListaClienteEmpresa
    Created on : 26/10/2020, 01:13:00 PM
    Author     : Alvarado Montes
--%>
<%@page import="java.util.List"%>
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
    <tbody>
        <h1>Reporte de Clientes de tipo empresa</h1>
        <table class="table table-striped">
            <thead class="thead-blue">
              <tr>
                <th scope="col">Id</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">Direccion</th>
                <th scope="col">Contacto</th>
                <th scope="col">Descuento</th>
              </tr>
            </thead>
            <%
              InformacionDAO informacionDao = new InformacionDAO(); 
              List<Empresa1> empresas=informacionDao.getDBEmpresa(); 
              int i=0;
              for( Empresa1 empresa : empresas){ 
                i++;
              %>
              <tr>
                <th scope="row"><%=i%></th>
                <td><%=empresa.getNombre()%></td> 
                <td><%=empresa.getApellido()%></td>
                <td><%=empresa.getDireccion()%></td>
                <td><%=empresa.getContacto()%></td>
                <td><%=empresa.getDescuento()%></td>  
                
                <th>
                    <a href="EliminarDatos.jsp?nombre=<%=empresa.getNombre()%>&apellido=<%=empresa.getApellido()%>&tipoCliente=empresa">
                    <img src="Images/IconoEliminar.jpg" width="30" height="30"/>
                    </a>||
                    <a href="EditarClienteEmpresa.jsp?nombre=<%=empresa.getNombre()%>&apellido=<%=empresa.getApellido()%>&direccion=<%=empresa.getDireccion()%>&contacto=<%=empresa.getContacto()%>&descuento=<%=empresa.getDescuento()%>">
                        <img src="Images/IconoEditar.png" width="30" height="30"/>
                    </a>
                </th>
                
              </tr>
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
    </tbody>
</html>
