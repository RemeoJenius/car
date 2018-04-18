package com.jenius.recommend.car.dataobject.mapper;/**
 * Jenius
 * Created in 2018/3/31 下午3:15
 */

import com.jenius.recommend.car.dataobject.CarInfo;
import com.jenius.recommend.car.dto.CarDTO;
import com.jenius.recommend.car.form.CarComparingForm;
import com.jenius.recommend.car.form.CarForm;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @program: car
 *
 * @description: 使用mybatis方式对car操作
 *
 * @author: jenius
 *
 * @create: 2018-03-31 15:15
 **/
public interface CarMapper {

    /**
     * 获取汽车总数
     * @return
     */
    @Select("select count(i.car_id) from car_info i, car_price p where i.car_id = p.car_id")
    Integer getCarListTotal();

    /**
     * 分页获取汽车列表
     */
    @Select("select i.*,p.car_transmission,p.car_engine,p.car_price from car_info i, car_price p where i.car_id = p.car_id limit #{pageNo},#{size}")
    List<CarDTO> getCarListPage(@Param("pageNo") Integer pageNo, @Param("size") Integer size);

    /**
     * 获取carDTO对象
     * @return
     */
    @Select("select * from car_info i, car_price p where i.car_id = p.car_id")
    List<CarDTO> listCarDTO();

    /**
     * 根据汽车结构查找汽车等级
     * @param structure
     * @return
     */
    @Select("SELECT DISTINCT car_level FROM car_info where car_structure = #{structure}")
    List<String> listCarLevelByStructure(@Param(("structure")) String structure);

    List<CarDTO> listCar(@Param("carComparingForm")CarComparingForm carComparingForm);
}
