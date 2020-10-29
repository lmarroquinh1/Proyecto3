package utilerias;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Alvarado Montes
 */

import conexion.ConexionDB;
import modelo.Individual;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Empresa;
import modelo.Producto;

public class InformacionDAO {
    
     public List<Individual> getDBIndividual(){
        List<Individual> individuales = new ArrayList<Individual>();
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String consulta = " SELECT  nombre, apellido, direccion, dpi"+
                              " FROM individuales";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                individuales.add(new Individual(rs.getString("nombre"), rs.getString("apellido"), rs.getString("direccion"), rs.getString("dpi")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return individuales;
    }
     
      public void guardarIndividual(Individual individual){
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String dml = "INSERT INTO individuales(nombre, apellido, direccion, dpi) VALUES("+
                        individual.getNombre()+ ",'" + individual.getApellido()+ "')" + individual.getDireccion()+ ",´" + individual.getDpi()+ ",´";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
      
    public List<Empresa> getDBEmpresa(){ 
         List<Empresa> empresas = new ArrayList<Empresa>();
         try {
            Statement statement = ConexionDB.conn.createStatement();
            String consulta = " SELECT  nombre, apellido, direccion, contacto, descuento"+
                              " FROM empresas";
            ResultSet rs = statement.executeQuery(consulta);
             while (rs.next()) {
                 empresas.add(new Empresa(rs.getString("nombre"), rs.getString("apellido"), rs.getString("direccion"), rs.getString("contacto"), rs.getInt("descuento")));
             }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
         return empresas;
    } 
    
    public void guardarEmpresa(Empresa empresa){
        try {
            Statement statement = ConexionDB.conn.createStatement();
            String dml = "INSERT INTO empresas(nombre, apellido, direccion, contacto, descuento) VALUES("+
                        empresa.getNombre()+ ",'" + empresa.getApellido()+ "')" + empresa.getDireccion()+ ",´" + empresa.getContacto()+ ",´" + empresa.getDescuento()+ ",´";
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
                        producto.getCodigo()+ ",'" + producto.getNombreProducto()+ "')" + producto.getCantidad()+ ",´" + producto.getPrecio()+ ",´" ;
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    } 
}
