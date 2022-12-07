package com.techelevator.dao;

import com.techelevator.model.Passport;

import java.util.List;

public interface PassportDao {

    List<Passport> getPassport(int userID);
    List<Passport> getPassportBeer(int userID);
    List<Passport> getPassportBrewery(int userID);
}
