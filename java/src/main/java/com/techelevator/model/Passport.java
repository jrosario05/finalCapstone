package com.techelevator.model;

public class Passport {

    private int passportId;
    private int breweryId;
    private int beerId;
    private boolean visited;
    private boolean drank;
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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
