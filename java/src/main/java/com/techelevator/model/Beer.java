package com.techelevator.model;

public class Beer {

    private int beerId;
    private String beerName;
    private double abv;
    private String description;
    private String style;
    private String imgUrl;
    private boolean inPassport;


    public Beer(){

    }

    public Beer(int beerId, String beerName, double abv, String description, String style, String imgUrl, boolean inPassport) {
        this.beerId = beerId;
        this.beerName = beerName;
        this.abv = abv;
        this.description = description;
        this.style = style;
        this.imgUrl = imgUrl;
        this.inPassport = inPassport;
    }

    public boolean isInPassport() {
        return inPassport;
    }

    public void setInPassport(boolean inPassport) {
        this.inPassport = inPassport;
    }

    public int getBeerId() {
        return beerId;
    }

    public void setBeerId(int beerId) {
        this.beerId = beerId;
    }

    public String getBeerName() {
        return beerName;
    }

    public void setBeerName(String beerName) {
        this.beerName = beerName;
    }

    public double getAbv() {
        return abv;
    }

    public void setAbv(double abv) {
        this.abv = abv;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }
}
