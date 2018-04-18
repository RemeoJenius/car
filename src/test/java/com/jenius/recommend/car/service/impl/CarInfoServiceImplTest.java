package com.jenius.recommend.car.service.impl;

import com.jenius.recommend.car.dataobject.CarInfo;
import com.jenius.recommend.car.dataobject.mapper.CarMapper;
import com.jenius.recommend.car.dto.CarDTO;
import com.jenius.recommend.car.form.CarComparingForm;
import com.jenius.recommend.car.repository.CarInfoRepository;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Jenius
 * Created in 2018/2/13 下午7:14
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class CarInfoServiceImplTest {

    @Autowired
    private CarMapper mapper;

    @Autowired
    private CarInfoRepository repository;

    @Test
    public void findOne() {
        CarInfo carInfo = repository.findOne(5);
        Assert.assertNotNull(carInfo);
    }

    @Test
    public void save() {
    }

    @Test
    public void listCar() {
        CarComparingForm carComparingForm = new CarComparingForm();
        List<CarDTO> carDTOList = mapper.listCar(carComparingForm);
        Assert.assertTrue(carDTOList.size() > 0);
    }
}