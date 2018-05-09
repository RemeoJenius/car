package com.jenius.recommend.car.form;/**
 * Jenius
 * Created in 2018/3/31 下午10:06
 */

import lombok.Data;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import java.io.File;
import java.math.BigDecimal;

/**
 * @program: car
 *
 * @description: 接收前端对汽车新增和修改的表单
 *
 * @author: jenius
 *
 * @create: 2018-03-31 22:06
 **/
@Data
public class CarForm extends Form{


    private Integer id;

    /** 名字. */
    @NotEmpty(message = "汽车名称不能为空")
    private String carName;

    /** 用户评分. */
    @Max(value = 11,message = "评分不能大于10")
    @Min(value = 0,message = "评分不能使负数")
    private BigDecimal carRating;

    /** 级别. */
    @NotEmpty(message = "汽车级别不能为空")
    private String carLevel;

    /** 车身结构. */
    @NotEmpty(message = "车身结构不能为空")
    private String carStructure;

    /** 小图. */
    private MultipartFile file;

    /** 小图. */
    private String carIcon;

    /** 价格. */
    @Min(value = 0,message = "价格不能使负数")
    private BigDecimal carPrice;

    /** 变速箱. */
    @NotEmpty(message = "汽车变速箱不能为空")
    private String carTransmission;

    /** 发动机. */
    @Min(value = 0,message = "不能使负数")
    private BigDecimal carEngine;


}
