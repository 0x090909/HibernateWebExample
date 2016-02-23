/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.gutzu.controllers.beans;

import org.springframework.beans.factory.annotation.Autowire;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Scope;

/**
 *
 * @author FSEVERI\gutu2891
 */
@Configuration()
@Scope("session")
public class Sessione {
    private String nome;

    public Sessione() {
        nome="";
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
    
    
}
