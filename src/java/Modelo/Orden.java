/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author Alvarado Montes
 */
public class Orden {
    private int idOrden;
    private int idCliente;
    private int idProducto;
    private double precioEnvio;
    private String tipoEnvio;
    private String estado;
    private Date fechaOrden;
    private double total;
    private Producto producto;

    public Orden(Date pfecha){
        this.fechaOrden=pfecha;
        this.total=0.0;
    }
    
    public Orden(int idOrden, int idCliente, int idProducto, double precioEnvio, String tipoEnvio, String estado) {
        this.idOrden = idOrden;
        this.idCliente = idCliente;
        this.idProducto = idProducto;
        this.precioEnvio = precioEnvio;
        this.tipoEnvio = tipoEnvio;
        this.estado = estado;
        this.total = 0.0;
    }

    public int getIdOrden() {
        return idOrden;
    }

    public void setIdOrden(int idOrden) {
        this.idOrden = idOrden;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public double getPrecioEnvio() {
        return precioEnvio;
    }

    public void setPrecioEnvio(double precioEnvio) {
        this.precioEnvio = precioEnvio;
    }

    public String getTipoEnvio() {
        return tipoEnvio;
    }

    public void setTipoEnvio(String tipoEnvio) {
        this.tipoEnvio = tipoEnvio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Date getFechaOrden() {
        return fechaOrden;
    }

    public void setFechaOrden(Date fechaOrden) {
        this.fechaOrden = fechaOrden;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }
    
}
