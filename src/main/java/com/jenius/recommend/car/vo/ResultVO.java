package com.jenius.recommend.car.vo;

import lombok.Data;

/**
 * http请求返回给最外层对象
 * Jenius
 * Created in 2018/3/18 下午3:28
 */
@Data
public class ResultVO<T> {

    /** 错误码.*/
    private Integer code;

    /** 提示信息.*/
    private String msg;

    /** 具体内容.*/
    private T data;

}
