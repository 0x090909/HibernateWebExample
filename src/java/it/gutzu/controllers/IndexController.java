/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.gutzu.controllers;

import it.gutzu.controllers.beans.Sessione;
import it.gutzu.db.Database;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author FSEVERI\gutu2891
 */
@Controller  
public class IndexController {
    
    private Sessione sessione = new Sessione();
    private Database db = new Database();

    
    @RequestMapping(value="/")
    public String index(ModelMap map){
        db.connect();
        
        map.put("sess", sessione.getNome());
        return "login";
    }
    
    @RequestMapping(value="/loginCheck", method = RequestMethod.POST)
    public String loginCheck(ModelMap map, @RequestParam(value="username") String user,@RequestParam(value="password") String pass){
        String nome = db.login(user, pass);
        if (nome != null){
            
            map.put("status", "ok");
            map.put("sessione", sessione);
            sessione.setNome(nome);
            
        }else{
        
            map.put("status", "not ok");
        }
        return "loginCheck";
    }
    @RequestMapping(value="/dash")
    public String dashboard(ModelMap map){
        map.put("showDetail","no");
        map.put("title", "Dashboard");
        
            
        return "dash";
    }
    
     @RequestMapping(value="/mostraClienti")
    public String mostraClienti(ModelMap map){
        
        map.put("showDetail","yes");
        map.put("title", "Mostra Clienti");
        map.put("clienti", db.getClienti());
            
        return "clienti";
    }
    
     @RequestMapping(value="/modificaClienti")
    public String modificaClienti(ModelMap map, @RequestParam(value="id", required=false) String id){
        
        map.put("showDetail","yes");
        if (id != null)
            map.put("showEditor","yes");
        else
            map.put("showEditor","no"); 
        map.put("title", "Modifica cliente Clienti");
        map.put("clienti", db.getClienti());
            
        return "editClienti";
    }
    
}
