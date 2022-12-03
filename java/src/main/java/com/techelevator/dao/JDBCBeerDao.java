package com.techelevator.dao;


import com.techelevator.model.Beer;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCBeerDao implements BeerDao {


    private final JdbcTemplate jdbcTemplate;



    public JDBCBeerDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public Beer getAllBeersByBrewery(int breweryId) {
        String sql = "Select beer_id, brewery_id, beer_name, abv, description, style_name, img_url from beer_style " +
                "join beer on beer.style_id = beer_style.style_id " +
                "where brewery_id = ?";


        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, breweryId);
        if(results.next()){
            return mapRowToBeer(results);
        }else{
            return null;
        }
    }





    private Beer mapRowToBeer(SqlRowSet rs){
        Beer beer = new Beer();
        beer.setBeerId(rs.getInt("beer_id"));
        beer.setAbv(rs.getDouble("abv"));
        beer.setBreweryName(rs.getString("brewery_name"));
        beer.setDescription(rs.getString("description"));
        beer.setStyle(rs.getString("style_name"));
        beer.setImgUrl(rs.getString("img_url"));

        return beer;
    }
}


