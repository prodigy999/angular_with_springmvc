/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author tom
 */
@Controller
public class ExemplesController {
    
    @RequestMapping(value = "scope", method = RequestMethod.GET)
    public String scope(){
        
        return "Exemples/scope";
    }
}
