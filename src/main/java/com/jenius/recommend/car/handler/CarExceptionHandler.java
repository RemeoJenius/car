package com.jenius.recommend.car.handler;

import com.jenius.recommend.car.enums.ResultEnum;
import com.jenius.recommend.car.exception.CarAuthorizeException;
import com.jenius.recommend.car.exception.CarParameterException;
import com.jenius.recommend.car.util.ResultVOUtil;
import com.jenius.recommend.car.vo.ResultVO;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

/**
 * Jenius
 * Created in 2018/3/25 上午8:16
 */
@ControllerAdvice
public class CarExceptionHandler {

    // 拦截登录异常
    @ExceptionHandler(CarAuthorizeException.class)
    public ModelAndView handlerAuthorizeException() {

        return new ModelAndView("admin/login");
    }

    // 拦截入参异常
    @ExceptionHandler(CarParameterException.class)
    @ResponseBody
    @ResponseStatus(HttpStatus.FORBIDDEN)
    public ResultVO handlerParameterException() {

        return ResultVOUtil.error(ResultEnum.PARAM_ERROR.getCode(),ResultEnum.PARAM_ERROR.getMassage());
    }
}
