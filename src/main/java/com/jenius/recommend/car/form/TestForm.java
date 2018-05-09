package com.jenius.recommend.car.form;/**
 * Jenius
 * Created in 2018/5/8 上午8:36
 */

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

/**
 * @program: car
 *
 * @description: 测试表单
 *
 * @author: jenius
 *
 * @create: 2018-05-08 08:36
 **/
@Data
public class TestForm {

    private MultipartFile file;

    private Integer id;
}
