package com.techelevator.dao;

import com.techelevator.model.Brewery;
import com.techelevator.model.Hours;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JDBCBrewery implements BreweryDao{

    private final JdbcTemplate jdbcTemplate;

    public JDBCBrewery(JdbcTemplate jdbcTemplate) {


        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<Brewery> getAllBrewery(int breweryId) {

        List<Brewery> brewery = new ArrayList<>();

        String hoursSql = "Select * from hours " +
                "where brewery_id = ?";
        SqlRowSet days = jdbcTemplate.queryForhoursSql, breweryId);
        while (days.next()) {
            brewery.add(days)


        }


            String sql = "SELECT brewery.brewery_id, brewery_name, day, open, close, street_address, city, " +
                    "state, zip_code, phone_number, description, has_food, website, img_url FROM brewery " +
                    "JOIN hours ON hours.brewery_id = brewery.brewery_id " +
                    "WHERE brewery.brewery_id = ?";
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, breweryId);
            if (results.next()){
                Brewery breweries = mapToRowSetBrewery(results);
                brewery.add(breweries);

                return brewery;
            }

    }

    private Brewery mapToRowSetBrewery(SqlRowSet rs){

        Hours hours = new Hours();

        Brewery brewery = new Brewery();

        brewery.setBreweryId(rs.getInt("brewery_id"));
        brewery.setBreweryName(rs.getString("brewery_name"));
        brewery.setStreetAddress(rs.getString("street_address"));
        brewery.setCity(rs.getString("city"));
        brewery.setState(rs.getString("state"));
        brewery.setZip(rs.getInt("zip_code"));
        brewery.setHasFood(rs.getBoolean("has_food"));
        brewery.setImgUrl(rs.getString("img_url"));
        brewery.setWebsite(rs.getString("website"));

        hours.setMonOpen(rs.getString("mon_open"));
        hours.setMonClose(rs.getString("mon_close"));
        hours.setTuesOpen(rs.getString("tues_open"));
        hours.setTuesClose(rs.getString("tues_close"));
        hours.setWedOpen(rs.getString("wed_open"));
        hours.setWedClose(rs.getString("wed_close"));


        return brewery;



    }

    private Hours mapToRowSetHours(SqlRowSet rs){
        Hours hours = new Hours();



    }




}
