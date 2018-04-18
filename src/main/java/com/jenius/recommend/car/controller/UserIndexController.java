package com.jenius.recommend.car.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Jenius
 * Created in 2018/3/24 上午9:13
 */
@Controller
@RequestMapping("/")
public class UserIndexController {

    @GetMapping("/")
    public ModelAndView index() {
        return new ModelAndView("user/index");
    }
}
