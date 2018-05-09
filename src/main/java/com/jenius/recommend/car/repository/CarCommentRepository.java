package com.jenius.recommend.car.repository;/**
 * Jenius
 * Created in 2018/5/8 下午2:02
 */

import com.jenius.recommend.car.dataobject.CarComment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @program: car
 *
 * @description: 汽车评论仓储
 *
 * @author: jenius
 *
 * @create: 2018-05-08 14:02
 **/
public interface CarCommentRepository extends JpaRepository<CarComment,Integer>{

    /**
     * 根据汽车id查找评论
     * @param carId
     * @return
     */
    List<CarComment> findAllByCarId(Integer carId);

    /**
     * 根据汽车id查找好评
     * @param carId
     * @param type
     * @return
     */
    List<CarComment> findAllByCarIdAndTypeOrderByUpdateTime(Integer carId,Integer type);
}
