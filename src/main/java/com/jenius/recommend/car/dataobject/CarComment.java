package com.jenius.recommend.car.dataobject;/**
 * Jenius
 * Created in 2018/5/8 上午11:37
 */

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

/**
 * @program: car
 *
 * @description: 实体汽车评论类
 *
 * @author: jenius
 *
 * @create: 2018-05-08 11:37
 **/
@Data
@ToString
@Table(name = "car_comment")
@Entity
public class CarComment {

    @Column(name = "comment_id")
    @Id
    @GeneratedValue
    private Integer id;

    @Column(name = "car_id")
    private Integer carId;

    @Column(name = "user_id")
    private Integer userId;

    @Column(name = "car_comment")
    private String carComment;

    @Column(name = "type")
    private Integer type;

    private Date createTime;

    private Date updateTime;

}
