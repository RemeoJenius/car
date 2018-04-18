package com.jenius.recommend.car.service;/**
 * Jenius
 * Created in 2018/4/6 上午8:36
 */

import com.jenius.recommend.car.dataobject.CarInfo;
import com.jenius.recommend.car.dataobject.CarPrice;
import com.jenius.recommend.car.dto.CarDTO;

import java.util.List;

/**
 * @program: car
 *
 * @description:
 *
 * @author: jenius
 *
 * @create: 2018-04-06 08:36
 **/
public interface CarPriceService {

    List<CarPrice> findAll();

    /**
     * 保存汽车信息
     * @param carPrice
     * @return
     */
    CarPrice saveCarPrice(CarPrice carPrice);

    /**
     * 根据carId更新
     * @param id
     * @return
     */
    CarPrice getCarPriceByCarId(Integer id);

    /**
     * 根据汽车id删除汽车信息
     * @param id
     */
    void deleteCarPriceByCarId(Integer id);

}
