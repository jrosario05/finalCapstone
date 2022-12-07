package com.techelevator.dao;

import com.techelevator.model.Passport;
import com.techelevator.model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Component;

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

            String sql =
                    "Select * from users " +
                    "join passport on passport.user_id = users.user_id " +
                    "join passport_beer on passport.passport_id = passport_beer.passport_id " +
                    "join passport_brewery on passport.passport_id = passport_brewery.passport_id " +
                    "where users.user_id = ?";
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userID);
                while (results.next()){
                    User user = mapRowToUser(results);
                    Passport passport = mapRowToPassport(results, user);
                    passports.add(passport);
                }
                return passports;



    }

    private Passport mapRowToPassport(SqlRowSet rs, User user) {
        Passport passport = new Passport();

        passport.setBeerId(rs.getInt("beer_id"));
        passport.setBreweryId(rs.getInt("brewery_id"));
        passport.setDrank(rs.getBoolean("drank"));
        passport.setVisited(rs.getBoolean("visited"));
        passport.setPassportId(rs.getInt("passport_id"));
        passport.setUser(user);

        return passport;

    }

    private User mapRowToUser(SqlRowSet rs) {
        User user = new User();
        user.setUsername(rs.getString("username"));
        user.setUserFirstName(rs.getString("user_first"));
        user.setUserLastName(rs.getString("user_last"));
        user.setAddress(rs.getString("address"));
        user.setCity(rs.getString("city"));
        user.setState(rs.getString("state"));
        user.setZipCode(rs.getInt("zip_code"));
        user.setRole(rs.getString("role"));

        return user;







    }




}
