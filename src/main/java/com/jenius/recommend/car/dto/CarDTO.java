package com.jenius.recommend.car.dto;/**
 * Jenius
 * Created in 2018/4/6 上午9:00
 */

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import javax.persistence.Entity;
import java.math.BigDecimal;

/**
 * @program: car
 *
 * @description:
 *
 * @author: jenius
 *
 * @create: 2018-04-06 09:00
 **/
@Data
public class CarDTO {

    private Integer carId;


    private String carName;


    private String carPrice;


    private BigDecimal carRating;


    private String carIcon;



    private String carTransmission;


    private String carEngine;


    private String carLevel;

    private String carStructure;
}
