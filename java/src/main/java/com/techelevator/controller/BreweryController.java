package com.techelevator.controller;

import com.techelevator.dao.BreweryDao;
import com.techelevator.model.Brewery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin



public class BreweryController {
@Autowired
private BreweryDao dao;



    @RequestMapping(path="/breweries", method = RequestMethod.GET)
    public List<Brewery> getBreweries(){return dao.getAllBrewery();}


    @RequestMapping(path = "/breweries/{breweryId}", method = RequestMethod.GET)
    public Brewery getBreweryById(@PathVariable int breweryId){
        return dao.getBreweryById(breweryId);
    }

}