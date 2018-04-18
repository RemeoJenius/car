package com.jenius.recommend.car.controller;/**
 * Jenius
 * Created in 2018/4/1 上午8:44
 */

import org.apache.ibatis.annotations.ResultMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @program: car
 *
 * @description: 登录页面显示
 *
 * @author: jenius
 *
 * @create: 2018-04-01 08:44
 **/
@Controller
@RequestMapping("/admin")
public class AdminLoginController {


    @GetMapping("/index")
    public ModelAndView index(){
        return new ModelAndView("admin/index");
    }

    @GetMapping("/tables")
    public ModelAndView carList(){
        return new ModelAndView("admin/tables");
    }
}
