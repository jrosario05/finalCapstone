package com.techelevator.controller;

import com.techelevator.model.Brewery;
import com.techelevator.dao.BreweryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin



public class BreweryController {

    private BreweryDAO dao;



    @RequestMapping(path="/breweries", method = RequestMethod.GET)
    public List<Brewery> getBreweries(){return dao.retrieveListOfBreweries();}


}