package com.jenius.recommend.car.service.impl;

import com.jenius.recommend.car.dataobject.CarComment;
import com.jenius.recommend.car.repository.CarCommentRepository;
import com.jenius.recommend.car.service.CarCommentService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Jenius
 * Created in 2018/5/8 下午3:45
 */
@Slf4j
public class CarCommentServiceImplTest extends CarInfoServiceImplTest{


    @Autowired
    private CarCommentService service;
    @Test
    public void listCarCommentByCarIdAndType() {
        List<CarComment> carCommentList =  service.listCarCommentByCarIdAndType(1,2);

        System.out.println(carCommentList);
    }
}