package com.techelevator.dao;


import com.techelevator.model.Beer;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.List;

public class JDBCBreweryDao implements BreweryDao{

    @Override
    public List<Beer> getAllBeersByBrewery(int breweryId) {
        return null;
    }





    private Beer mapRowToBeer(SqlRowSet rs){
        Beer beer = new Beer();
        beer.setBeerId(rs.getInt("beer_id"));
        beer.setAbv();
    }
}


