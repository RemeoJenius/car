package com.jenius.recommend.car.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/**汽车（包含级别）
 * Jenius
 * Created in 2018/3/18 下午3:49
 */
@Data
public class CarVO {


    @JsonProperty("structure")
    private String carStructure;

    @JsonProperty("cars")
    private List<CarInfoVO> carInfoVOList;
}
