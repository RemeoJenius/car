package com.jenius.recommend.car.service;

import com.jenius.recommend.car.dataobject.CarInfo;
import com.jenius.recommend.car.dataobject.CarPrice;
import com.jenius.recommend.car.dto.CarDTO;
import com.jenius.recommend.car.form.CarComparingForm;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * Jenius
 * Created in 2018/2/13 上午9:17
 */
public interface CarInfoService {

    /**
     * 根据汽车id返回汽车信息
     * @param carId
     * @return
     */
    CarInfo getCarInfoByCarId(Integer carId);

    /**
     * 保存汽车信息
     * @param carInfo
     * @return
     */
    CarInfo saveCarInfo(CarInfo carInfo);



    /**
     * 分页
     * @param pageable
     * @return
     */
    Page<CarInfo> findAllByPrice(Pageable pageable);

    /**
     * 查询所有汽车信息
     * @return
     */
    List<CarInfo> findAll();

    /**
     * 获取所有车的数量
     * @return
     */
    Integer getCarListTotal();

    /**
     *分页
     * @return
     */
    List<CarDTO> getCarListPage(Integer pageNo, Integer size);

    /**
     * 删除汽车
     * @param id
     */
    void deleteCarByCarId(int id);

    /**
     * 返回carDTO
     * @return
     */
    List<CarDTO> listCarDTO();

    /**
     * 汽车对比
     * @return
     */
    List<CarDTO> listCar(CarComparingForm carComparingForm);

}
