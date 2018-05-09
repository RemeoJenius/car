package com.jenius.recommend.car.service.impl;

import com.jenius.recommend.car.dataobject.CarInfo;
import com.jenius.recommend.car.dataobject.CarPrice;
import com.jenius.recommend.car.repository.CarPriceRepository;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * Jenius
 * Created in 2018/4/6 上午8:41
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class CarPriceServiceImplTest {

    @Autowired
    private CarPriceRepository repository;

    @Test
    public void findAll() {
        List<CarPrice> carPriceList = repository.findAll();
        Assert.assertTrue(carPriceList.size() > 0);
    }

    @Test
    public void getCarInfoByCarIdTest() {


    }
}