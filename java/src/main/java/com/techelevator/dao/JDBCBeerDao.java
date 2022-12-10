package com.techelevator.dao;


import com.techelevator.model.Beer;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JDBCBeerDao implements BeerDao {


    private final JdbcTemplate jdbcTemplate;



    public JDBCBeerDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<Beer> getAllBeersByBrewery(int breweryId) {
        List<Beer> beers = new ArrayList<>();

        String sql = "Select beer_id, beer_name, abv, beer.description, style_name, beer.img_url from beer_style" +
                " join beer on beer.style_id = beer_style.style_id" +
                " where brewery_id = ?";


        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, breweryId);
        while (results.next()) {
            Beer beer = mapRowToBeer(results);
            beers.add(beer);

        }
        return beers;

    }

    @Override
    public List<Beer> getAllBeers() {
        List<Beer> beers = new ArrayList<>();
        String sql = "Select * from beer_style" +
                " join beer on beer.style_id = beer_style.style_id";


        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            Beer beer = mapRowToBeer(results);
            beers.add(beer);

        }
        return beers;
    }

    @Override
    public Beer getBeer(int beerId) {
        Beer beer = null;
        String sql = "Select * from beer " +
                "join beer_style on beer.style_id = beer_style.style_id " +
                "where beer_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, beerId);

        if(results.next()) {
            beer = mapRowToBeer(results);
        }
        return beer;



    }

    private Beer mapRowToBeer(SqlRowSet rs){
        Beer beer = new Beer();
        beer.setBeerId(rs.getInt("beer_id"));
        beer.setAbv(rs.getDouble("abv"));
        beer.setBeerName(rs.getString("beer_name"));
        beer.setDescription(rs.getString("description"));
        beer.setStyle(rs.getString("style_name"));
        beer.setImgUrl(rs.getString("img_url"));
        beer.setInPassport(false);

        return beer;
    }
}


