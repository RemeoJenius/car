package com.jenius.recommend.car.controller;

import com.jenius.recommend.car.dataobject.CarPrice;
import com.jenius.recommend.car.dto.CarDTO;
import com.jenius.recommend.car.enums.ResultEnum;
import com.jenius.recommend.car.exception.CarException;
import com.jenius.recommend.car.form.CarComparingForm;
import com.jenius.recommend.car.form.CarForm;
import com.jenius.recommend.car.service.CarInfoService;
import com.jenius.recommend.car.service.CarPriceService;
import com.jenius.recommend.car.vo.CarInfoVO;
import com.jenius.recommend.car.vo.CarVO;
import com.jenius.recommend.car.vo.ResultVO;
import com.jenius.recommend.car.dataobject.CarInfo;
import com.jenius.recommend.car.service.impl.CarInfoServiceImpl;
import com.jenius.recommend.car.util.ResultVOUtil;
import com.lly835.bestpay.rest.type.Get;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.transaction.Transactional;
import javax.ws.rs.PathParam;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Jenius
 * Created in 2018/2/13 下午7:24
 */
@Api(tags = "汽车操作测试接口")
@Controller
@RequestMapping("/recommend")
@Slf4j
public class CarInfoController {

    @Autowired
    private CarInfoServiceImpl carInfoService;

    @Autowired
    private CarPriceService carPriceService;

    /**
     * 根据汽车id返回汽车实例
     * @param id
     * @return
     */
    @ApiOperation(value="汽车详情")
    @GetMapping("/detail/{id}")
    @ResponseBody
    public ResultVO findCarInfoByCarId(@PathVariable Integer id) {
        CarForm carForm = new CarForm();
        CarPrice carPrice = carPriceService.getCarPriceByCarId(id);
        CarInfo carInfo = carInfoService.getCarInfoByCarId(id);
        log.info("【carPrice信息】{}",carPrice);
        try {
            BeanUtils.copyProperties(carPrice,carForm);
            log.info("【carForm】{}",carForm);
            BeanUtils.copyProperties(carInfo,carForm);
            log.info("【carForm】{}",carForm);
        } catch (Exception e) {
            log.error("【获取汽车】{}",carForm);
            throw new CarException(ResultEnum.DATABASE_RESULT_ERROR);
        }

        return ResultVOUtil.success(carForm);
    }

    /**
     * 返回所有的汽车（不分页）
     * @return
     */
    @ApiOperation(value="汽车列表详情")
    @GetMapping("/list")
    @ResponseBody
    public ResultVO list() {

        List<CarVO> carVOList = new ArrayList<>(10);
        List<CarDTO> carDTOList = carInfoService.listCarDTO();
        // 1.找出所有的结构
        List<String> carInfoStructureList = carDTOList.stream()
                .map(CarDTO::getCarStructure)
                .collect(Collectors.toList());
        Set<String> stringSet = new HashSet<>(carInfoStructureList.size());

        for (String structure : carInfoStructureList) {
            stringSet.add(structure);
        }
        // 2.按照结构取出对应的车
        for (String structure : stringSet) {
            CarVO carVO = new CarVO();
            if (structure != null) {
                // 3.组装数据
                carVO.setCarStructure(structure);
                List<CarInfoVO> carInfoVOList = new ArrayList<>(carDTOList.size());
                for (CarDTO carDTO : carDTOList) {
                    if (structure.equals(carDTO.getCarStructure())) {
                        CarInfoVO carInfoVO = new CarInfoVO();
                        BeanUtils.copyProperties(carDTO, carInfoVO);
                        carInfoVOList.add(carInfoVO);
                    }
                }
                carVO.setCarInfoVOList(carInfoVOList);

            }
            carVOList.add(carVO);

        }

        return ResultVOUtil.success(carVOList);
    }

    /**
     * 返回汽车总数
     * @return
     */
    @ApiOperation(value="汽车列表总数")
    @GetMapping("/list/total")
    @ResponseBody
    public ResultVO getCarListTotal() {
        try {
            return ResultVOUtil.success(carInfoService.getCarListTotal());
        }catch (CarException e){
            log.error("【数据库返回错误】{}",e.getMessage());
        }
        return ResultVOUtil.error(ResultEnum.DATABASE_RESULT_ERROR.getCode(),ResultEnum.DATABASE_RESULT_ERROR.getMassage());
    }

    /**
     * 返回汽车列表（分页）
     * @param pageNo 当前页数
     * @param size   一页展示多少条数据
     * @return
     */
    @ApiOperation(value="汽车列表分页")
    @GetMapping("/list/page")
    @ResponseBody
    public ResultVO getCarListPage(@RequestParam(value = "pageNo", defaultValue = "1") int pageNo,
                                   @RequestParam(value = "size", defaultValue = "10") int size) {
        pageNo = pageNo - 1;
        boolean isMoreZero = pageNo > 0 && size > 0;
        if (isMoreZero) {
            try {
                return ResultVOUtil.success(carInfoService.getCarListPage(size*pageNo,size));
            }catch (CarException e){
                log.error("【数据库返回错误】{}",e.getMessage());
            }
        }

        if (!(isMoreZero)) {
            try {
                return ResultVOUtil.success(carInfoService.getCarListPage(0,size));
            }catch (CarException e){
                log.error("【数据库返回错误】{}",e.getMessage());
            }
        }

        return ResultVOUtil.error(ResultEnum.DATABASE_RESULT_ERROR.getCode(),ResultEnum.DATABASE_RESULT_ERROR.getMassage());
    }

    /**
     * 根据汽车id删除汽车
     * @param id
     * @return
     */
    @ApiOperation(value="汽车删除")
    @GetMapping("/delete/{id}")
    @ResponseBody
    @Transactional
    public ResultVO deleteCarByCarId(@PathVariable("id") int id) {
        try {
            carInfoService.deleteCarByCarId(id);
            carPriceService.deleteCarPriceByCarId(id);
            return ResultVOUtil.success("删除成功");
        } catch (CarException e) {
            log.error("【删除汽车】{}", e.getMessage());
        }
        return ResultVOUtil.error(ResultEnum.DELETE_CAR_FAILURE.getCode(),ResultEnum.DELETE_CAR_FAILURE.getMassage());
    }


    /**
     * 汽车添加
     * @param carForm
     * @param bindingResult
     * @return
     */
    @ApiOperation(value="汽车添加接口")
    @PostMapping("/api/add")
    @ResponseBody
    @Transactional
    public ResultVO addCar(@Validated CarForm carForm,
                           BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            log.error("【参数输入有误】{}",carForm);
            throw new CarException(ResultEnum.PARAM_ERROR.getCode(),ResultEnum.PARAM_ERROR.getMassage());
        }
        if (carForm != null) {
            CarInfo carInfo = new CarInfo();
            CarPrice carPrice = new CarPrice();
            BeanUtils.copyProperties(carForm,carInfo);
            BeanUtils.copyProperties(carForm,carPrice);
            CarInfo result = carInfoService.saveCarInfo(carInfo);
            carPrice.setCarId(carInfo.getCarId());
            carPriceService.saveCarPrice(carPrice);
            return ResultVOUtil.success(null);
        }
        return ResultVOUtil.error(ResultEnum.ADD_CAR_FAILURE.getCode(),ResultEnum.ADD_CAR_FAILURE.getMassage());
    }

    /**
     * 汽车更新
     * @param carForm
     * @param bindingResult
     * @param id
     * @return
     */
    @ApiOperation(value="汽车更新接口")
    @PostMapping("/update/{id}")
    @ResponseBody
    @Transactional
    public ResultVO updateCar(@Validated CarForm carForm,
                              BindingResult bindingResult,
                              @PathVariable("id")Integer id) {
        if (bindingResult.hasErrors()) {
            log.error("【参数输入有误】{}",carForm);
            throw new CarException(ResultEnum.PARAM_ERROR.getCode(),ResultEnum.PARAM_ERROR.getMassage());
        }
        if (carForm != null) {
            log.info("【carForm】{}",carForm);
            CarInfo carInfo = carInfoService.getCarInfoByCarId(id);
            CarPrice carPrice = carPriceService.getCarPriceByCarId(id);
            if (carInfo != null && carPrice != null) {
                BeanUtils.copyProperties(carForm,carInfo);
                BeanUtils.copyProperties(carForm,carPrice);
                try {
                    carInfoService.saveCarInfo(carInfo);
                    carPriceService.saveCarPrice(carPrice);
                } catch (Exception e) {
                    log.error("【汽车更新失败】{}",e.getMessage());
                }
                return ResultVOUtil.success(null);
            }
        }
        return ResultVOUtil.error(ResultEnum.UPDATE_CAR_FAILURE.getCode(),ResultEnum.UPDATE_CAR_FAILURE.getMassage());
    }
    @ApiOperation(value="汽车比较接口")
    @GetMapping("/comparing")
    @ResponseBody
    public ResultVO carComparing(@ModelAttribute("carComparingForm")CarComparingForm carComparingForm) {
        log.info("【carComparingForm】{}",carComparingForm);
        List<CarDTO> carDTOList = carInfoService.listCar(carComparingForm);

        if (carDTOList != null) {
            return ResultVOUtil.success(carDTOList);
        }
        return ResultVOUtil.error(ResultEnum.DATABASE_RESULT_ERROR.getCode(),ResultEnum.DATABASE_RESULT_ERROR.getMassage());
    }
    /**
     * 汽车添加页面ftl
     * @return
     */
    @GetMapping("/add")
    public ModelAndView add() {

        return new ModelAndView("admin/form-showcase");
    }

    /**
     * 汽车列表ftl
     * @return
     */
    @ApiOperation(value = "后台汽车列表")
    @GetMapping("/carList")
    public ModelAndView carList() {

        return new ModelAndView("admin/tables");
    }
    /**
     * 汽车列表ftl
     * @return
     */
    @ApiOperation(value = "前台台汽车列表")
    @GetMapping("/userCarList")
    public ModelAndView userCarList() {

        return new ModelAndView("user/carList");
    }

}
