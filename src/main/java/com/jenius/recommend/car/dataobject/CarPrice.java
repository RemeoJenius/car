package com.jenius.recommend.car.dataobject;/**
 * Jenius
 * Created in 2018/4/5 下午10:26
 */

import lombok.Data;
import lombok.ToString;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @program: car
 *
 * @description:
 *
 * @author: jenius
 *
 * @create: 2018-04-05 22:26
 **/
@Data
@Entity
@DynamicUpdate
@ToString
public class CarPrice {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Integer carPricdId;

    /** 汽车id.*/
    private Integer carId;

    /** 指导价格. */
    private BigDecimal carPrice;

    /** 变速箱. */
    private String carTransmission;

    /** 发动机. */
    private BigDecimal carEngine;

    /** 创建时间. */
    private Date createTime;

    /** 修改时间. */
    private Date updateTime;

    /** 推荐值*/
    private Integer recommendValue;
}
