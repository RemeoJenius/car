package com.jenius.recommend.car.util;

import com.jenius.recommend.car.enums.ResultEnum;
import com.jenius.recommend.car.vo.ResultVO;

/**
 * Jenius
 * Created in 2018/3/18 下午4:30
 */
public class ResultVOUtil {

    public static ResultVO success(Object object) {
        ResultVO resultVO = new ResultVO();
        resultVO.setCode(0);
        resultVO.setMsg("成功");
        resultVO.setData(object);
        return resultVO;
    }

    public static ResultVO success() {
        return null;
    }

    public static ResultVO error(Integer code, String message) {
        ResultVO resultVO = new ResultVO();
        resultVO.setCode(code);
        resultVO.setMsg(message);
        return resultVO;
    }

    public static ResultVO error(ResultEnum resultEnum) {
        ResultVO resultVO = new ResultVO();
        resultVO.setCode(resultEnum.getCode());
        resultVO.setMsg(resultEnum.getMassage());
        return resultVO;
    }

    private ResultVOUtil() {}
}
