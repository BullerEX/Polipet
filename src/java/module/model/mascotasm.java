/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package module.model;

/**
 *
 * @author adsi
 */
public class mascotasm {
    private String usrid;
    private String nombre;
    private boolean genero;
    private String caris;
    private String raza;

    public String getUsrid() {
        return usrid;
    }

    public void setUsrid(String usrid) {
        this.usrid = usrid;
    }
    
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setGenero(boolean genero) {
        this.genero = genero;
    }
    public boolean getGenero() {
        return genero;
    }

    public void setCaris(String caris) {
        this.caris = caris;
    }
    
    public String getCaris() {
        return caris;
    }
    
    public void setRaza(String raza) {
        this.raza = raza;
    }
    
    public String getRaza() {
        return raza;
    }

    
}
