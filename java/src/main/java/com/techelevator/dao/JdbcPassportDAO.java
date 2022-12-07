package com.techelevator.dao;

import com.techelevator.model.Passport;
import com.techelevator.model.PassportBeerInfo;
import com.techelevator.model.PassportBreweryInfo;
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

//            String sql =
//                    "Select * from user_info " +
////                    "join passport on passport.user_id = users.user_id " +
////                    "join passport_beer on passport.passport_id = passport_beer.passport_id " +
////                    "join passport_brewery on passport.passport_id = passport_brewery.passport_id " +
//                    "where user_id = ?";
//            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userID);
//                while(results.next()){
//
//                    Passport passport = mapRowToUser(results);
//                    passports.add(passport);
//                }


        return passports;



    }

    @Override
    public List<Passport> getPassportBeer(int userID) {
        List<Passport> passports = new ArrayList<>();

        String beerSql = "Select  * from user_info " +
                "join passport_beer on user_info.passport_id = passport_beer.passport_id " +
                "where user_info.user_id = ?";

        SqlRowSet beerResults = jdbcTemplate.queryForRowSet(beerSql, userID);
        while (beerResults.next()){
            Passport passport = mapRowBeerPassport(beerResults);
            passports.add(passport);
        }


        return passports;
    }

    @Override
    public List<Passport> getPassportBrewery(int userID) {
        List<Passport> passports = new ArrayList<>();

        String brewerySql = "Select  * from user_info " +
                "join passport_brewery on user_info.passport_id = passport_brewery.passport_id " +
                "where user_info.user_id = ?";

        SqlRowSet  breweryResults = jdbcTemplate.queryForRowSet(brewerySql, userID);
        while (breweryResults.next()){
            Passport passport = mapRowBreweryPassport(breweryResults);
            passports.add(passport);
        }
        return passports;
    }

    @Override
    public List<PassportBeerInfo> getPassportBeerInfo(int userId, int breweryId) {
        List<PassportBeerInfo> beerInfo = new ArrayList<>();
        String sql = "Select  passport_beer.beer_id, beer_name, abv, drank, style_name  from user_info " +
                "                join passport_beer on user_info.passport_id = passport_beer.passport_id " +
                "join beer on passport_beer.beer_id = beer.beer_id " +
                "join beer_style on  beer.style_id = beer_style.style_id " +
                "                where user_info.user_id = ? and brewery_id = ? ";

        SqlRowSet beerResults = jdbcTemplate.queryForRowSet(sql,userId,breweryId);
        while (beerResults.next()){
            PassportBeerInfo beer =mapRowPassportBeerInfo(beerResults);
            beerInfo.add(beer);
        }



        return beerInfo;
    }

    @Override
    public List<PassportBreweryInfo> getPassportBreweryInfo(int userId) {
        List<PassportBreweryInfo> breweryInfo = new ArrayList<>();
        String sql =
                "SELECT brewery_name, brewery.brewery_id " +
                "from user_info " +
                "join passport_brewery on user_info.passport_id = passport_brewery.passport_id " +
                "join brewery on passport_brewery.brewery_id = brewery.brewery_id " +
                "where user_id = ? " +
                "Group by brewery.brewery_id ";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        while (results.next()){
            PassportBreweryInfo brewery = mapRowPassportBreweryInfo(results);
            breweryInfo.add(brewery);

        }
        return breweryInfo;
    }


    private  Passport mapRowBeerPassport(SqlRowSet rs){
        Passport passport = new Passport();


        passport.setBeerId(rs.getInt("beer_id"));
        passport.setDrank(rs.getBoolean("drank"));

        return passport;
    }

    private Passport mapRowBreweryPassport(SqlRowSet rs) {
        Passport passport = new Passport();
        passport.setBreweryId(rs.getInt("brewery_id"));
        passport.setVisited(rs.getBoolean("visited"));



        return passport;

    }


    private PassportBeerInfo mapRowPassportBeerInfo(SqlRowSet rs){
        PassportBeerInfo beerInfo = new PassportBeerInfo();
        beerInfo.setBeerId(rs.getInt("beer_id"));
        beerInfo.setBeerName(rs.getString("beer_name"));
        beerInfo.setAbv(rs.getDouble("abv"));
        beerInfo.setStyleName(rs.getString("style_name"));
        beerInfo.setDrank(rs.getBoolean("drank"));

        return beerInfo;
    }

    private PassportBreweryInfo mapRowPassportBreweryInfo(SqlRowSet rs){

        PassportBreweryInfo breweryInfo = new PassportBreweryInfo();
        breweryInfo.setBreweryId(rs.getInt("brewery_id"));
        breweryInfo.setBreweryName(rs.getString("brewery_name"));

        return breweryInfo;
    }




}
