package com.jenius.recommend.car.vo;

import lombok.Data;

/**
 * Jenius
 * Created in 2018/3/21 下午8:35
 */
@Data
public class ErrorInfo<T> {
    public static final Integer OK = 0;
    public static final Integer ERROR = 100;

    private Integer code;
    private String message;
    private String url;
    private boolean status;
    private T data;
}
