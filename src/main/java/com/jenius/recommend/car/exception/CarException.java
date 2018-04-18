package com.jenius.recommend.car.exception;

import com.jenius.recommend.car.enums.ResultEnum;
import lombok.Getter;
import org.springframework.web.bind.annotation.ControllerAdvice;

/**
 * Jenius
 * Created in 2018/3/17 下午10:16
 */

@Getter
public class CarException extends RuntimeException {

    private Integer code;

    public CarException(ResultEnum resultEnum) {
        super(resultEnum.getMassage());
        this.code = resultEnum.getCode();
    }

    public CarException(Integer code,String message){
        super(message);
        this.code = code;
    }
}
