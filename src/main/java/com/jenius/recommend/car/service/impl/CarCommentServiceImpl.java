package com.jenius.recommend.car.service.impl;/**
 * Jenius
 * Created in 2018/5/8 下午2:07
 */

import com.jenius.recommend.car.dataobject.CarComment;
import com.jenius.recommend.car.repository.CarCommentRepository;
import com.jenius.recommend.car.service.CarCommentService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @program: car
 *
 * @description: 汽车评论业务实现类
 *
 * @author: jenius
 *
 * @create: 2018-05-08 14:07
 **/
@Service
@Slf4j
public class CarCommentServiceImpl implements CarCommentService {

    @Autowired
    private CarCommentRepository repository;
    @Override
    public List<String> listCommentByCarId(Integer carId) {
        return repository.findAllByCarId(carId).stream().map(CarComment::getCarComment).collect(Collectors.toList());
    }

    @Override
    public List<CarComment> listCarComment() {
        return repository.findAll();
    }

    @Override
    public List<CarComment> listCarCommentByCarId(Integer carId) {
        return repository.findAllByCarId(carId);
    }

    @Override
    public List<CarComment> listCarCommentByCarIdAndType(Integer carId, Integer type) {
        return repository.findAllByCarIdAndTypeOrderByUpdateTime(carId,type);
    }


    @Override
    public List<String> listComment() {
        return repository.findAll().stream().map(CarComment::getCarComment).collect(Collectors.toList());
    }

    @Override
    public CarComment save(CarComment carComment) {
        return repository.save(carComment);
    }

    @Override
    public void deleteComment(Integer commentId) {
        repository.delete(commentId);
    }

    @Override
    public CarComment getCarCommentById(Integer commentId) {
        return repository.findOne(commentId);
    }
}
