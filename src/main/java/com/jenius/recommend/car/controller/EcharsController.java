package com.jenius.recommend.car.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Jenius
 * Created in 2018/3/24 下午4:57
 */
@Controller
@RequestMapping("/parameter")
public class EcharsController {

    @GetMapping("/comparing")
    public ModelAndView bar() {
        return new ModelAndView("user/bar");
    }
}
