package Modelo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Alvarado Montes
 */
public class Individual1 extends Cliente {
     private String dpi;

    public Individual1(String nombre, String apellido, String direccion, String dpi) {
        super(nombre, apellido, direccion);
        this.dpi = dpi;
    }
    
    public String getDpi() {
        return dpi;
    }

    public void setDpi(String dpi) {
        this.dpi = dpi;
    }

    @Override
    public String toString() {
        return super.toString().concat("DPI=" + dpi); 
    }
    
    
    
}
