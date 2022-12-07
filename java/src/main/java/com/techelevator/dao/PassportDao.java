package com.techelevator.dao;

import com.techelevator.model.Passport;

import java.util.List;

public interface PassportDao {

    List<Passport> getPassport(int UseID);
}
