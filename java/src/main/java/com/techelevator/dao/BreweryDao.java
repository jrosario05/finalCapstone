package com.techelevator.dao;

import com.techelevator.model.Beer;

import java.util.List;

public interface BreweryDao {

    List<Beer> getAllBeersByBrewery(int breweryId);


}
