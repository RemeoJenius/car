package com.jenius.recommend.car;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


/** 
*
* @author jenius 
* @date 2018/3/27 下午9:34  
*/ 


@SpringBootApplication
@MapperScan("com.jenius.recommend.car.dataobject.mapper")
public class CarApplication {

	public static void main(String[] args) {
		SpringApplication.run(CarApplication.class, args);
	}
}
