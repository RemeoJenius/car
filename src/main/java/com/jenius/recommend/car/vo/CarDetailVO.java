package com.jenius.recommend.car.vo;/**
 * Jenius
 * Created in 2018/5/8 上午9:54
 */

import com.fasterxml.jackson.annotation.JsonProperty;
import com.jenius.recommend.car.dataobject.CarPrice;
import lombok.Data;
import lombok.ToString;

import java.math.BigDecimal;
import java.util.List;

/**
 * @program: car
 *
 * @description: 汽车详情展示对象
 *
 * @author: jenius
 *
 * @create: 2018-05-08 09:54
 **/
@Data
@ToString
public class CarDetailVO {
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

    private List<CarPrice> carPriceList;
}
