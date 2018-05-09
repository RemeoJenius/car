package com.jenius.recommend.car.vo;/**
 * Jenius
 * Created in 2018/5/8 上午11:32
 */

import lombok.Data;
import lombok.ToString;

import java.math.BigDecimal;
import java.util.List;

/**
 * @program: car
 *
 * @description: 汽车详情和评论的显示
 *
 * @author: jenius
 *
 * @create: 2018-05-08 11:32
 **/
@Data
@ToString
public class CarDetailAndCommentVO {

    private Integer id;

    /** 用户名*/
    private String userName;

    /** 名字. */
    private String carName;

    /** 用户评分. */
    private BigDecimal carRating;

    /** 级别. */
    private String carLevel;

    /** 车身结构. */
    private String carStructure;

    /** 小图. */
    private String carIcon;

    /** 价格. */
    private BigDecimal carPrice;

    /** 变速箱. */
    private String carTransmission;

    /** 发动机. */
    private BigDecimal carEngine;

    /** 好评*/
    private List<String> praise;

    /** 差评*/
    private List<String> badReview;
}
