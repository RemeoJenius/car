package com.jenius.recommend.car.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.math.BigDecimal;

/**汽车信息
 * Jenius
 * Created in 2018/3/18 下午3:44
 */
@Data
public class CarInfoVO {

    @JsonProperty("id")
    private Integer carId;

    @JsonProperty("name")
    private String carName;

    @JsonProperty("price")
    private String carPrice;

    @JsonProperty("rating")
    private BigDecimal carRating;

    @JsonProperty("icon")
    private String carIcon;


    @JsonProperty("transmission")
    private String carTransmission;

    @JsonProperty("engine")
    private String carEngine;

    @JsonProperty("level")
    private String carLevel;

}
