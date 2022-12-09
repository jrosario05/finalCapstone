package com.techelevator.model;

import java.util.List;

public class PassportBreweryInfo {

    private int breweryId;
    private String breweryName;
    private boolean cardOpen;

    private List<PassportBeerInfo> passportBeers;

    public List<PassportBeerInfo> getPassportBeers() {
        return passportBeers;
    }

    public void setPassportBeers(List<PassportBeerInfo> passportBeers) {
        this.passportBeers = passportBeers;
    }

    public boolean isCardOpen() {
        return cardOpen;
    }

    public void setCardOpen(boolean cardOpen) {
        this.cardOpen = cardOpen;
    }

    public int getBreweryId() {
        return breweryId;
    }

    public void setBreweryId(int breweryId) {
        this.breweryId = breweryId;
    }

    public String getBreweryName() {
        return breweryName;
    }

    public void setBreweryName(String breweryName) {
        this.breweryName = breweryName;
    }
}
