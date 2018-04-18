package com.jenius.recommend.car.form;/**
 * Jenius
 * Created in 2018/4/10 下午8:31
 */

import lombok.Data;
import lombok.ToString;

import java.math.BigDecimal;

/**
 * @program: car
 *
 * @description: 汽车比较
 *
 * @author: jenius
 *
 * @create: 2018-04-10 20:31
 **/
@Data
@ToString
public class CarComparingForm {

    private String carName;

    private String carLevel;

    private String carStructure;

    private String carTransmission;

    private String carEngine;

    private BigDecimal minPrice;

    private BigDecimal maxPrice;

}
