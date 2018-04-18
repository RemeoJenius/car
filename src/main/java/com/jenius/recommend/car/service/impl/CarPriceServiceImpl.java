package com.jenius.recommend.car.service.impl;/**
 * Jenius
 * Created in 2018/4/6 上午8:38
 */

import com.jenius.recommend.car.dataobject.CarInfo;
import com.jenius.recommend.car.dataobject.CarPrice;
import com.jenius.recommend.car.dataobject.mapper.CarMapper;
import com.jenius.recommend.car.dto.CarDTO;
import com.jenius.recommend.car.repository.CarPriceRepository;
import com.jenius.recommend.car.service.CarPriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: car
 *
 * @description:
 *
 * @author: jenius
 *
 * @create: 2018-04-06 08:38
 **/
@Service
public class CarPriceServiceImpl implements CarPriceService {

    @Autowired
    private CarPriceRepository carPriceRepository;

    @Override
    public List<CarPrice> findAll() {
        return carPriceRepository.findAll();
    }

    @Override
    public CarPrice saveCarPrice(CarPrice carPrice) {
        return carPriceRepository.save(carPrice);
    }

    @Override
    public CarPrice getCarPriceByCarId(Integer id) {
        return carPriceRepository.findOneByCarId(id);
    }

    @Override
    public void deleteCarPriceByCarId(Integer id) {
        carPriceRepository.deleteCarPriceByCarId(id);
    }
}
