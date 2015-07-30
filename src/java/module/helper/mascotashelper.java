/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package module.helper;

/**
 *
 * @author adsi
 */
public class mascotashelper {
    
    public String Defgen(boolean Gener) {
        String gene = "";
    if (Gener){
        gene = "Macho";
    } else {
        gene = "Hembra";
    }
     return gene;   
    }
}
