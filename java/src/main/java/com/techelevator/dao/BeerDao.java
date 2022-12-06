package com.techelevator.dao;

import com.techelevator.model.Beer;

import java.util.List;

public interface BeerDao {

    List<Beer> getAllBeersByBrewery(int breweryId);

    List<Beer> getAllBeers();

    Beer getBeer(int beerId);
}


