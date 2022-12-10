package com.techelevator.dao;

import com.techelevator.model.Beer;
import com.techelevator.model.Passport;
import com.techelevator.model.PassportBeerInfo;
import com.techelevator.model.PassportBreweryInfo;

import java.util.List;

public interface PassportDao {

    List<Passport> getPassport(int userID);
    List<Passport> getPassportBeer(int userID);
    List<Passport> getPassportBrewery(int userID);
    List<PassportBeerInfo> getPassportBeerInfo(int userId, int breweryId);
    List<PassportBreweryInfo> getPassportBreweryInfo(int userId);
    void addBeerToPassport(int userId, Beer beer);
    void deleteBeerFromPassport(int userId, int beerId);
    void updateDrank(int userId, int beerId);
    List<PassportBeerInfo> getPassportBeerFilter(int userId);
    void updateRating(int userId, int beerId, int rating);
//    void deleteBreweryFromPassport(int userId, PassportBeerInfo beer);
}
