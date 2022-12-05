package com.techelevator.controller;

import com.techelevator.dao.BeerDao;
import com.techelevator.model.Beer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@CrossOrigin

public class BeerController {

    @Autowired
    private BeerDao dao;

    @RequestMapping(path="/breweries/{breweryId}/beers", method = RequestMethod.GET)
    public List<Beer> getBeersByBreweryId(@PathVariable int breweryId){
        return dao.getAllBeersByBrewery(breweryId);
    }

    @RequestMapping(path="/breweries/beers", method = RequestMethod.GET)
    public List<Beer> getAllBeers(){
        return dao.getAllBeers();
    }






}
