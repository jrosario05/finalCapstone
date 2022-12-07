package com.techelevator.controller;

import com.techelevator.dao.PassportDao;
import com.techelevator.model.Passport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class PassportController {

@Autowired
private PassportDao dao;


    @RequestMapping(path = "/passport/{userId}", method = RequestMethod.GET)
        public List<Passport> getPassport(@PathVariable int userId){
            return dao.getPassport(userId);
        }

}
