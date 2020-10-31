<%-- 
    Document   : EliminarClienteIndividual
    Created on : Oct 29, 2020, 6:54:24 PM
    Author     : User
--%>
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
            
              <%
              InformacionDAO informacionDao = new InformacionDAO();
              String tipoCliente=request.getParameter("tipoCliente");
              
              switch(tipoCliente)
{
              case "individual" :
              String dpi=request.getParameter("dpi");
              informacionDao.eliminarIndividual(dpi);
              request.getRequestDispatcher("ListaClienteIndividual.jsp").forward(request, response);
      break; 
   
              case "empresa" :
              String nombre=request.getParameter("nombre");
                  String apellido=request.getParameter("apellido");    
                  informacionDao.eliminarEmpresa(nombre, apellido);
                  request.getRequestDispatcher("ListaClienteEmpresa.jsp").forward(request, response);
      break;
      
              case "producto" :
              String codigoProducto=request.getParameter("codigoProducto");    
                  informacionDao.eliminarProducto(codigoProducto);
                  request.getRequestDispatcher("ListaProducto.jsp").forward(request, response);
      break;
      
                    case "ordenCompra" :
              String idOrden=request.getParameter("idOrden");    
                  informacionDao.eliminarOrdenCompra(idOrden);
                  request.getRequestDispatcher("ListaOrdenCompra.jsp").forward(request, response);
      break;
      
              }//fin del switch
              
              
              %>
    </tbody>
</html>