/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import streaming.entity.Film;
import streaming.service.FilmCrudService;

/**
 *
 * @author tom
 */
@Controller
@RequestMapping("/film")
public class FilmController {
    
    @Autowired
    private FilmCrudService filmCrudService;
    
    @RequestMapping(value = "ajouter", method = RequestMethod.POST)
    public String ajouterPOST(Film film){
        
        filmCrudService.save(film);
        
        return "redirect:/film/lister";
    }
    
    @RequestMapping(value = "ajouter", method = RequestMethod.GET)
    public String ajouter(Model model){
        
        model.addAttribute("film", new Film());
        
        return "/film/ajouter";
    }
    
    @RequestMapping(value = "lister", method = RequestMethod.GET)
    public String lister(Model model){
        
        model.addAttribute("films", filmCrudService.findAll());
        
        return "/film/lister";
    }
    
    @RequestMapping(value="find/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Film findById( @PathVariable("id") long id){
        
        Film f = new Film(1L, "Karate Kid", "blabla", 1989L, null);
        
        return f;
    }
}
