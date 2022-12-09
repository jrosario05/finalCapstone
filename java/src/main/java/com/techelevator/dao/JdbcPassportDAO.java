package com.techelevator.dao;

import com.techelevator.model.*;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Component;

import java.awt.*;
import java.security.Principal;
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
        String sql = "Select  passport_beer.beer_id, beer_name, abv, drank, style_name, brewery_id  from user_info " +
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
        List<PassportBreweryInfo> myBreweries = new ArrayList<>();
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

            int id = brewery.getBreweryId();

            String sql2 = "Select  passport_beer.beer_id, beer_name, abv, drank, style_name, brewery_id  from user_info " +
                    "                join passport_beer on user_info.passport_id = passport_beer.passport_id " +
                    "join beer on passport_beer.beer_id = beer.beer_id " +
                    "join beer_style on  beer.style_id = beer_style.style_id " +
                    "                where user_info.user_id = ? and brewery_id = ? ";
            SqlRowSet beerResults = jdbcTemplate.queryForRowSet(sql2, userId, id);
            List<PassportBeerInfo> myBeers=new ArrayList<>();
            while(beerResults.next()){

                PassportBeerInfo beer = mapRowPassportBeerInfo(beerResults);
                myBeers.add(beer);

            }
            brewery.setPassportBeers(myBeers);
            myBreweries.add(brewery);

        }

        return myBreweries;
    }


    @Override
    public void addBeerToPassport(int userId, Beer beer){
        String sql= "Insert into passport_beer (passport_id, beer_id, drank) "+
        "VALUES ((SELECT passport_id from user_info where user_id = ?), ?, false)";
        jdbcTemplate.update(sql, userId, beer.getBeerId());
        String sql2= "Insert into passport_brewery (passport_id, brewery_id, visited) " +
        "VALUES ((SELECT passport_id from user_info where user_id = ?), (select brewery_id from beer where beer_id = ?), false)";
        jdbcTemplate.update(sql2, userId, beer.getBeerId());

    }

    @Override
    public void deleteBeerFromPassport(int userId, int beerId) {

        String sqlFOrBreweryId="SELECT brewery_id FROM beer where beer_id = ?";
        Integer breweryId=jdbcTemplate.queryForObject(sqlFOrBreweryId, Integer.class, beerId);
        int brewInt = (int)breweryId;

        String sql = "DELETE FROM passport_beer WHERE beer_id = ? AND passport_id = (SELECT passport_id FROM user_info where user_id = ?)";
        jdbcTemplate.update(sql, beerId, userId);

        List<PassportBeerInfo> beers = getPassportBeerInfo(userId, brewInt);

        if(beers.size() == 0) {
            String sqlBrewery = "DELETE FROM passport_brewery WHERE brewery_id = ?";

            jdbcTemplate.update(sqlBrewery, brewInt);
        }
    }

    public void updateDrank(int userId, int beerId){
        String sql="update passport_beer " +
                "set drank= NOT drank " +
                "where beer_id= ? and passport_id =(select passport_id from user_info where user_id= ?)";
        jdbcTemplate.update(sql, beerId, userId);
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
        beerInfo.setBreweryId(rs.getInt("brewery_id"));

        return beerInfo;
    }

    private PassportBreweryInfo mapRowPassportBreweryInfo(SqlRowSet rs){

        PassportBreweryInfo breweryInfo = new PassportBreweryInfo();
        breweryInfo.setBreweryId(rs.getInt("brewery_id"));
        breweryInfo.setBreweryName(rs.getString("brewery_name"));
        breweryInfo.setCardOpen(false);

        return breweryInfo;
    }

    //@TODO





}
