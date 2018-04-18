package com.jenius.recommend.car.dataobject.mapper;

import com.jenius.recommend.car.dataobject.CarInfo;
import com.jenius.recommend.car.dto.CarDTO;
import com.jenius.recommend.car.form.CarComparingForm;
import lombok.extern.slf4j.Slf4j;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Jenius
 * Created in 2018/3/31 下午3:17
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class CarMapperTest {

    @Autowired
    private CarMapper mapper;

    @Test
    public void getCarListTotal() {
        Integer result = mapper.getCarListTotal();
        Assert.assertNotNull(result);
    }

    @Test
    public void getCarListPage() {
        List<CarDTO> resultList = mapper.getCarListPage(0,10);

        Assert.assertTrue(resultList.size() > 0);
    }

    @Test
    public void getCarDTO() {
        List<CarDTO> result = mapper.listCarDTO();
        Assert.assertTrue(result.size() > 0);
    }

    @Test
    public void listCarLevelByStructureTest() {
        List<String> resultList = mapper.listCarLevelByStructure("SUV");
        Assert.assertTrue(resultList.size() > 0);
    }

    @Test
    public void listCar() {
        CarComparingForm carComparingForm = new CarComparingForm();
        carComparingForm.setCarStructure("SUV");
        carComparingForm.setCarName("帝豪GS");
        carComparingForm.setMaxPrice(new BigDecimal(8));
        carComparingForm.setMinPrice(new BigDecimal(7.5));
        List<CarDTO> carDTOList = mapper.listCar(carComparingForm);
        Assert.assertTrue(carDTOList.size() > 0);
    }

}