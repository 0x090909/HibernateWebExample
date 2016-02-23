/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.gutzu.controllers;

import it.gutzu.db.Cliente;
import it.gutzu.db.Database;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author FSEVERI\gutu2891
 */

@RestController
public class Rest {
    private Database db = new Database();
    private List<Cliente> clienti;
    public Rest() {
        
        Database.connect();
        clienti = db.getClienti();
    }
     
    @RequestMapping("/getUser")
    public Cliente greeting(@RequestParam(value="piva", defaultValue="22222222222") String piva) {
        if (piva != null)
        for (Cliente c : clienti)
            if (piva.equals(c.getPiva()))
                return c;
        return new Cliente();
    }
    
    @RequestMapping(value="/updateUser", method = RequestMethod.POST)
    public String update(@RequestParam(value="piva", defaultValue="22222222222", required=true) String piva,@RequestParam(value="nome", required=false ) String nome,@RequestParam(value="cog" , required=false) String cognome, @RequestParam(value="ind" , required=false)String indirizzo) {
        if (nome == null || piva == null || cognome == null || indirizzo == null)return "fuck you";
        try {
            db.aggiornaCliente(nome, cognome, indirizzo, piva);
            return "success";
        } catch (SQLException ex) {
            Logger.getLogger(Rest.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "fuck you";
    }
}
