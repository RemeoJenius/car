package com.jenius.recommend.car.service;/**
 * Jenius
 * Created in 2018/5/8 下午2:04
 */

import com.jenius.recommend.car.dataobject.CarComment;

import java.util.List;

/**
 * @program: car
 *
 * @description: 汽车评论业务逻辑
 *
 * @author: jenius
 *
 * @create: 2018-05-08 14:04
 **/
public interface CarCommentService {

    /**
     * 根据汽车id查找评论
     * @param carId
     * @return
     */
    List<String> listCommentByCarId(Integer carId);

    /**
     * 获取所有评论对象
     * @return
     */
    List<CarComment> listCarComment();

    /**
     * 根据汽车id查找评论对象
     * @param carId
     * @return
     */
    List<CarComment> listCarCommentByCarId(Integer carId);

    /**
     * 根据汽车id和评论类型查找评论对象
     * @param carId
     * @param type
     * @return
     */
    List<CarComment> listCarCommentByCarIdAndType(Integer carId,Integer type);
    /**
     * 获取所有评论
     * @return
     */
    List<String> listComment();

    /**
     * 保存汽车评论对象
     * @return
     */
    CarComment save(CarComment carComment);

    /**
     * 根据评论id删除评论
     * @param commentId
     */
    void deleteComment(Integer commentId);

    /**
     * 根据评论id查询评论
     * @param commentId
     * @return
     */
    CarComment getCarCommentById(Integer commentId);
}
