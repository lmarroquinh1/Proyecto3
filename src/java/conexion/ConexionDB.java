
package conexion;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Alvarado Montes
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionDB {
     public static final String DRIVER_DB = "org.postgresql.Driver";
    public static final String URL_DB ="jdbc:postgresql://localhost:5432/postgres";
    public static final String USER_DB = "postgres";
    public static final String PASSWORD_DB = "123456";
    public static Connection conn;
    static{
        try {
            Class.forName(DRIVER_DB);
            conn=DriverManager.getConnection(URL_DB, USER_DB, PASSWORD_DB);   
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException ex) {
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
}
