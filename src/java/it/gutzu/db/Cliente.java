/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.gutzu.db;

import org.springframework.context.annotation.Bean;

/**
 *
 * @author FSEVERI\gutu2891
 */

public class Cliente {
    private String nome;
    private String cognome;
    private String indirizzo;
    private String piva;

    public Cliente(String nome, String cognome, String indirizzo, String piva) {
        this.nome = nome;
        this.cognome = cognome;
        this.indirizzo = indirizzo;
        this.piva = piva;
    }

    public Cliente() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getNome() {
        return nome;
    }

    public String getCognome() {
        return cognome;
    }
 

    public String getIndirizzo() {
        return indirizzo;
    }

    public String getPiva() {
        return piva;
    }
    
    
    
    
}
