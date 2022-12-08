package com.techelevator.controller;

import com.techelevator.dao.PassportDao;
import com.techelevator.model.Beer;
import com.techelevator.model.Passport;
import com.techelevator.model.PassportBeerInfo;
import com.techelevator.model.PassportBreweryInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class PassportController {

@Autowired
private PassportDao dao;


    @RequestMapping(path = "/passport/{userId}/beer", method = RequestMethod.GET)
        public List<Passport> getBeerPassport(@PathVariable int userId){
            return dao.getPassportBeer(userId);
        }

    @RequestMapping(path = "/passport/{userId}/brewery/{breweryId}", method = RequestMethod.GET)
    public List<PassportBeerInfo> getBreweryPassport(@PathVariable int userId, @PathVariable int breweryId){
        return dao.getPassportBeerInfo(userId, breweryId);
    }


    @RequestMapping(path = "/passport/{userId}", method = RequestMethod.GET)
    public List<PassportBreweryInfo> getBreweryInfo(@PathVariable int userId){
        return dao.getPassportBreweryInfo(userId);
    }

    @RequestMapping(path= "/passport/{userId}", method = RequestMethod.POST)
    public void PassportBeerInfo (@PathVariable int userId, @RequestBody Beer beer){
        dao.addBeerToPassport(userId, beer);
    }

    @RequestMapping(path= "/passport/{userId}", method = RequestMethod.DELETE)
    public void DeleteBeerFromPassport (@PathVariable int userId, @RequestBody PassportBeerInfo beer){
        dao.deleteBeerFromPassport(userId, beer);
    }
//
//    @RequestMapping(path= "/passport/{userId}", method = RequestMethod.DELETE)
//    public void DeleteBeeBreweryFromPassport (@PathVariable int userId, @RequestBody PassportBeerInfo beer){
//        dao.deleteBeerFromPassport(userId, beer);
//    }


}
