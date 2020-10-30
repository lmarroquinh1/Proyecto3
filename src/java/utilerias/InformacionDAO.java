package utilerias;

import conexion.ConexionDB;
import Modelo.Individual1;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Modelo.Empresa1;
import Modelo.Orden;
import Modelo.Producto;

public class InformacionDAO {
    
    /***
      * Guarda un cliente de tipo individual en la tabla individuales
      * @param individual variable de tipo individual que contiene la informacion a ser ingresada a la base de datos
      */     
                
      public void guardarIndividual(Individual1 individual){
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String dml = "INSERT INTO individuales(nombre, apellido, direccion, dpi) VALUES("+
            "'"+individual.getNombre()+"','"+individual.getApellido()+ "','" + individual.getDireccion()+ "','" + individual.getDpi()+"')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
      
      
      
      /***
      * elimina un cliente de tipo individual de la tabla individuales
      * @param individual variable de tipo individual que contiene la informacion a ser ingresada a la base de datos
      */     
      public void eliminarIndividual(String dpi){
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String dml = "Delete from individuales where dpi='"+dpi+"'";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    
      /***
      * elimina un cliente de tipo empresa de la tabla empresas
      * @param nombre, empresa  son los parametros a utilizar en la condicion para eliminar
      */     
      public void eliminarEmpresa(String nombre, String apellido){
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String dml = "Delete from empresas where nombre='"+nombre+"' and apellido='"+apellido+"'";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
      
    
    
    /***
     * Hace una consulta en la tabla individuales
     * @return retorna una lista con todos los clientes individuales encontrados
     */
     public List<Individual1> getDBIndividual(){
        List<Individual1> individuales = new ArrayList<Individual1>();
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String consulta = " SELECT  nombre, apellido, direccion, dpi"+
                              " FROM individuales";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                individuales.add(new Individual1(rs.getString("nombre"), rs.getString("apellido"), rs.getString("direccion"), rs.getString("dpi")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return individuales;
    }
     
     
     
      
      
      
    public List<Empresa1> getDBEmpresa(){ 
         List<Empresa1> empresas = new ArrayList<Empresa1>();
         try {
            Statement statement = ConexionDB.conn.createStatement();
            String consulta = " SELECT  nombre, apellido, direccion, contacto, descuento"+
                              " FROM empresas";
            ResultSet rs = statement.executeQuery(consulta);
             while (rs.next()) {
                 empresas.add(new Empresa1(rs.getString("nombre"), rs.getString("apellido"), rs.getString("direccion"), rs.getString("contacto"), rs.getInt("descuento")));
             }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
         return empresas;
    } 
    
    public void guardarEmpresa(Empresa1 empresa){
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String dml = "INSERT INTO empresas(nombre, apellido, direccion, contacto, descuento) VALUES("+
            "'"+empresa.getNombre()+"','"+empresa.getApellido()+"','"+empresa.getDireccion()+"','"+
                    empresa.getContacto()+"','"+empresa.getDescuento()+"')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    
   public List<Producto> getDBProducto(){ 
         List<Producto> productos = new ArrayList<Producto>();
         try {
            Statement statement = ConexionDB.conn.createStatement();
            String consulta = " SELECT  codigo, nombreProducto, cantidad, precio"+
                              " FROM productos";
            ResultSet rs = statement.executeQuery(consulta);
             while (rs.next()) {
                 productos.add(new Producto(rs.getInt("codigo"), rs.getString("nombreProducto"), rs.getInt("cantidad"), rs.getDouble("precio")));
             }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
         return productos;
    }
   
  public void guardarProducto(Producto producto){
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String dml = "INSERT INTO productos(codigo, nombreProducto, cantidad, precio) VALUES("+
            "'"+producto.getCodigo()+"','"+producto.getNombreProducto()+"','"+producto.getCantidad()+"','"+producto.getPrecio()+"')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    } 
  
  public void eliminarProducto(String codigoProducto){
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String dml = "Delete from productos where codigo='"+codigoProducto+"'";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
  
  
  
  public List<Orden> getDBOrden(){ 
         List<Orden> ordenes = new ArrayList<Orden>();
         try {
            Statement statement = ConexionDB.conn.createStatement();
            String consulta = " SELECT  idCliente, idProducto, precioEnvio, tipoEnvio, estado, fechaOrden, total"+
                              " FROM ordenes";
            ResultSet rs = statement.executeQuery(consulta);
             while (rs.next()) {
                 ordenes.add(new Orden(rs.getInt("idCliente"), rs.getInt("idCliente"), rs.getDouble("precioEnvio"), rs.getString("tipoEnvio"), rs.getString("estado")));
             }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
         return ordenes;
    }
   //Metodo agregar o guardar orden de compra
    public void guardarOrden(Orden orden){
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String dml = "INSERT INTO ordenes(idCliente, idProducto, precioEnvio, tipoEnvio, estado, fechaOrden, total) VALUES("+"'"
                        +orden.getIdCliente()+ "','" + orden.getIdProducto()+ "','" + orden.getPrecioEnvio()+ "','" + orden.getTipoEnvio()+ "','"+orden.getEstado()+"','"+ new java.util.Date()+"','"+orden.getTotal()+"')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
  
  
  
  
  
}
