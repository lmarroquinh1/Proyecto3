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
public class Empresa1 extends Cliente{
    private String contacto;
    private int descuento;

    public Empresa1(String nombre, String apellido, String direccion, String contacto, int descuento) {
        super(nombre, apellido, direccion);
        this.contacto=contacto;
        this.descuento=descuento;
    }

    public String getContacto() {
        return contacto;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }

    public int getDescuento() {
        return descuento;
    }

    public void setDescuento(int descuento) {
        this.descuento = descuento;
    }

    @Override
    public String toString() {
        return super.toString().concat("Contacto=" + contacto + "Descuento=" + descuento); 
    }
    
    
}
