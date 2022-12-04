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
    public List<Brewery> getAllBrewery() {

        List<Brewery> breweryList = new ArrayList<>();

        String sql = "Select * from brewery " +
                "join hours on brewery.brewery_id = hours.brewery_id;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);
        while (result.next()) {
            Hours hours=mapToRowSetHours(result);
            Brewery brewery=mapToRowSetBrewery(result, hours);
            breweryList.add(brewery);
        }
        return breweryList;
    }

    public Brewery getBreweryById(int id){
        Brewery brewery=null;
        String sql = "Select * from brewery " +
                "join hours on brewery.brewery_id = hours.brewery_id "+
                "Where brewery.brewery_id = ?";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, id);
        if (result.next()) {
            Hours hours = mapToRowSetHours(result);
            brewery = mapToRowSetBrewery(result, hours);
        }
        return brewery;
    }





    private Brewery mapToRowSetBrewery(SqlRowSet rs, Hours hours){
        Brewery brewery = new Brewery();

        brewery.setBreweryId(rs.getInt("brewery_id"));
        brewery.setBreweryName(rs.getString("brewery_name"));
        brewery.setStreetAddress(rs.getString("street_address"));
        brewery.setCity(rs.getString("city"));
        brewery.setState(rs.getString("state"));
        brewery.setPhoneNumber(rs.getString("phone_number"));
        brewery.setDescription(rs.getString("description"));
        brewery.setZip(rs.getInt("zip_code"));
        brewery.setHasFood(rs.getBoolean("has_food"));
        brewery.setImgUrl(rs.getString("img_url"));
        brewery.setWebsite(rs.getString("website"));
        brewery.setHours(hours);



        return brewery;



    }

    private Hours mapToRowSetHours(SqlRowSet rs){
        Hours hours = new Hours();
        hours.setMonOpen(rs.getString("mon_open"));
        hours.setMonClose(rs.getString("mon_close"));
        hours.setTuesOpen(rs.getString("tues_open"));
        hours.setTuesClose(rs.getString("tues_close"));
        hours.setWedOpen(rs.getString("wed_open"));
        hours.setWedClose(rs.getString("wed_close"));
        hours.setThursOpen(rs.getString("thur_open"));
        hours.setThursClose(rs.getString("thur_close"));
        hours.setFriOpen(rs.getString("fri_open"));
        hours.setFriClose(rs.getString("fri_close"));
        hours.setSatOpen(rs.getString("sat_open"));
        hours.setSatClose(rs.getString("sat_close"));
        hours.setSunOpen(rs.getString("sun_open"));
        hours.setSunClose(rs.getString("sun_close"));


        return hours;
    }




}
