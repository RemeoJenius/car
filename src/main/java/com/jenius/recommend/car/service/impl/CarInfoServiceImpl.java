package com.jenius.recommend.car.service.impl;

import com.jenius.recommend.car.dataobject.CarInfo;
import com.jenius.recommend.car.dataobject.CarPrice;
import com.jenius.recommend.car.dataobject.mapper.CarMapper;
import com.jenius.recommend.car.dto.CarDTO;
import com.jenius.recommend.car.enums.ResultEnum;
import com.jenius.recommend.car.exception.CarException;
import com.jenius.recommend.car.form.CarComparingForm;
import com.jenius.recommend.car.repository.CarInfoRepository;
import com.jenius.recommend.car.repository.CarPriceRepository;
import com.jenius.recommend.car.service.CarInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Jenius
 * Created in 2018/2/13 上午9:18
 */
@Service
public class CarInfoServiceImpl implements CarInfoService {

    @Autowired
    private CarInfoRepository repository;

    @Autowired
    private CarMapper mapper;

    @Override
    public CarInfo getCarInfoByCarId(Integer carId) {
        return repository.findOne(carId);
    }

    @Override
    public CarInfo saveCarInfo(CarInfo carInfo) {
        return repository.save(carInfo);
    }


    @Override
    public Page<CarInfo> findAllByPrice(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public List<CarInfo> findAll() {
        return repository.findAll();
    }

    /**
     * 返回汽车总数
     * @return
     */
    @Override
    public Integer getCarListTotal() {
        Integer total = mapper.getCarListTotal();
        if (total != null && total >= 0) {
            return total;
        }
        throw new CarException(ResultEnum.DATABASE_RESULT_ERROR.getCode(),ResultEnum.DATABASE_RESULT_ERROR.getMassage());
    }

    @Override
    public List<CarDTO> getCarListPage(Integer pageNo, Integer size) {
        List<CarDTO> result = mapper.getCarListPage(pageNo, size);
        if (result != null) {
            return result;
        }

        throw new CarException(ResultEnum.DATABASE_RESULT_ERROR.getCode(),ResultEnum.DATABASE_RESULT_ERROR.getMassage());
    }

    @Override
    public void deleteCarByCarId(int id) {
        repository.delete(id);
    }

    @Override
    public List<CarDTO> listCarDTO() {
        return mapper.listCarDTO();
    }

    @Override
    public List<CarDTO> listCar(CarComparingForm carComparingForm) {
        List<CarDTO> carDTOList = mapper.listCar(carComparingForm);
        if (carDTOList != null) {
            return carDTOList;
        }
        throw new CarException(ResultEnum.DATABASE_RESULT_ERROR);
    }


}
