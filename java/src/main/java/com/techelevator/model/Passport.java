package com.techelevator.model;

public class Passport {

    private int passportId;
    private int breweryId;
    private int beerId;
    private boolean visited;
    private boolean drank;

    private String userFirstName;
    private String userLastName;
    private String address;
    private String city;
    private String state;
    private  int zipCode;



    public String getUserFirstName() {
        return userFirstName;
    }

    public void setUserFirstName(String userFirstName) {
        this.userFirstName = userFirstName;
    }

    public String getUserLastName() {
        return userLastName;
    }

    public void setUserLastName(String userLastName) {
        this.userLastName = userLastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getZipCode() {
        return zipCode;
    }

    public void setZipCode(int zipCode) {
        this.zipCode = zipCode;
    }



    public int getPassportId() {
        return passportId;
    }

    public void setPassportId(int passportId) {
        this.passportId = passportId;
    }

    public int getBreweryId() {
        return breweryId;
    }

    public void setBreweryId(int breweryId) {
        this.breweryId = breweryId;
    }

    public int getBeerId() {
        return beerId;
    }

    public void setBeerId(int beerId) {
        this.beerId = beerId;
    }

    public boolean isVisited() {
        return visited;
    }

    public void setVisited(boolean visited) {
        this.visited = visited;
    }

    public boolean isDrank() {
        return drank;
    }

    public void setDrank(boolean drank) {
        this.drank = drank;
    }
}
