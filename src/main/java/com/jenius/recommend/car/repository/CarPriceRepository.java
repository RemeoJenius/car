package com.jenius.recommend.car.repository;
/**
 * Jenius
 * Created in 2018/4/6 上午8:33
 */

import com.jenius.recommend.car.dataobject.CarPrice;
import com.jenius.recommend.car.dto.CarDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @program: car
 *
 * @description:
 *
 * @author: jenius
 *
 * @create: 2018-04-06 08:33
 **/
public interface CarPriceRepository extends JpaRepository<CarPrice,Integer>{


    /**
     * 根据汽车id对应
     * @return
     */
    List<CarPrice> findAllByCarId(Integer carId);

    /**
     * 根据汽车id对应
     * @return
     */
    CarPrice findOneByCarId(Integer carId);

    /**
     * 根据汽车Id删除汽车信息
     */
    public void deleteCarPriceByCarId(Integer carId);

}
