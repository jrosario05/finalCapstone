package com.techelevator.dao;

import com.techelevator.model.Passport;
import com.techelevator.model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Component;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcPassportDAO implements PassportDao{

    private JdbcTemplate jdbcTemplate;


    public JdbcPassportDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;



    }


    @Override
    public List<Passport> getPassport(int userID) {
        List<Passport> passports = new ArrayList<>();

            String sql =
                    "Select * from passport " +
//                    "join passport on passport.user_id = users.user_id " +
//                    "join passport_beer on passport.passport_id = passport_beer.passport_id " +
//                    "join passport_brewery on passport.passport_id = passport_brewery.passport_id " +
                    "where users.user_id = ?";
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userID);
                while(results.next()){

                    Passport passport = mapRowToUser(results);
                    passports.add(passport);
                }

                String beerSql = "Select  beer_id from passport " +
                        "join passport_beer on passport.passport_id = passport_beer.passport_id " +
                        "where users.user_id = ? ";

                SqlRowSet beerResults = jdbcTemplate.queryForRowSet(beerSql, userID);
                while (beerResults.next()){
                    Passport passport = mapRowBeerPassport(beerResults);
                    passports.add(passport);
                }

        String brewerySql = "Select  beer_id from passport " +
                "join passport_beer on passport.passport_id = passport_beer.passport_id " +
                "where users.user_id = ? ";

        SqlRowSet  breweryResults = jdbcTemplate.queryForRowSet(brewerySql, userID);
        while (breweryResults.next()){
            Passport passport = mapRowBeerPassport(breweryResults);
            passports.add(passport);
        }


                return passports;



    }

    @Override
    public List<Passport> getPassportBeer(int userID) {
        return null;
    }

    @Override
    public List<Passport> getPassportBrewery(int userID) {
        return null;
    }


    private  Passport mapRowBreweryPassport(SqlRowSet rs){
        Passport passport = new Passport();


        passport.setBeerId(rs.getInt("beer_id"));
        passport.setDrank(rs.getBoolean("drank"));

        return passport;
    }

    private Passport mapRowBeerPassport(SqlRowSet rs) {
        Passport passport = new Passport();
        passport.setBreweryId(rs.getInt("brewery_id"));
        passport.setVisited(rs.getBoolean("visited"));



        return passport;

    }

    private Passport mapRowToUser(SqlRowSet rs) {
        Passport user = new Passport();

        user.setUserFirstName(rs.getString("user_first"));
        user.setUserLastName(rs.getString("user_last"));
        user.setAddress(rs.getString("address"));
        user.setCity(rs.getString("city"));
        user.setState(rs.getString("state"));
        user.setZipCode(rs.getInt("zip_code"));


        return user;







    }




}
