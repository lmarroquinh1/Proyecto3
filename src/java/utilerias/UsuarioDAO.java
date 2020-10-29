/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilerias;
import Modelo.Usuario;
import Modelo.Validar;
import utilerias.VariablesGlobales;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 * Esta clase nos presenta los mecanismo para acceder a la base de datos
 * y manejar la información de la tabla carrera
 */
public class UsuarioDAO implements Validar {

    /**
     * Método para obtener todos los usuarios de la base de datos como objetos
     */
        int r=0;
    @Override
    public int validar(Usuario usuario) {
    try {
        Statement statement = VariablesGlobales.conn.createStatement();
        System.out.println("-"+usuario.getUsuario()+"-");
        String consulta="Select * from usuarios where nombreusuario='"+usuario.getUsuario()+"' and password='"+usuario.getPassword()+"'";
        //String consulta="Select * from usuarios where nombreusuario='luis' and password='luis@gmail.com'";
        ResultSet rs = statement.executeQuery(consulta);
    while(rs.next()){
                //Si hay algun valor que coincida en la base de datos igualar a 1
                r=1;
                System.out.println("Si hay un match");
             }
    if (r==1){
    return 1;    
    } else {
        return 0;
    }
        } 
    catch (SQLException throwables) {
            return 0;
        }
    }

    
       
    
    /**
     * Método para obtener todos los registros de la base de datos como objetos
     * @return List de Carrera
     */
    /*
    public List<Carrera> getDBCarreras(){
        List<Carrera> carreras = new ArrayList<Carrera>();
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT codigo, nombre"+
                              " FROM carreras";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                carreras.add(new Carrera(rs.getInt("codigo"), rs.getString("nombre")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return carreras;
    }
    */

    /**
     * Método sirve para persistir las carreras en la base de datos
     * @param carrera
     */
    
    /*
    public void saveCarrera(Carrera carrera){
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String dml = "INSERT INTO carreras(codigo,nombre) VALUES("+
                        carrera.getCodigo() + ",'" + carrera.getNombre() + "')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            System.out.println("Ocurrio un error al guardar la carrera");
            throwables.printStackTrace();
        }
    }
    */
    

}
