package com.techelevator.dao;

import com.techelevator.model.Beer;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import javax.sql.DataSource;

public class JdbcBeerDaoTest extends BaseDaoTests{

    protected static final Beer BEER_1 = new Beer(1, "Bud light", 1.5, "this beer sucks", "Lager", "www.beer.com", false  );
    protected static final Beer BEER_2 = new Beer(1, "Miller Light", 2.5, "another sucker", "Amber", "www.beer.com", true );
    protected static final Beer BEER_3 = new Beer(1, "Beast", 2.8, "this beer sucks", "AIP", "www.beer.com", true  );


    private JDBCBeerDao sut;






    @Before
    public void setup() {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        sut = new JDBCBeerDao(jdbcTemplate);
    }


    @Test
    public void GET_BEER_TEST(){
        int beerId = 1;
      Beer beer =  sut.getBeer(beerId);

        Assert.assertEquals(1,beer);
    }


}



