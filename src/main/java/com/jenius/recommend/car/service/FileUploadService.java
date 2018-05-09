package com.jenius.recommend.car.service;/**
 * Jenius
 * Created in 2018/4/21 上午9:42
 */

import org.springframework.web.multipart.MultipartFile;

import java.io.File;

/**
 * @program: car
 *
 * @description: 图片上传业务逻辑接口
 *
 * @author: jenius
 *
 * @create: 2018-04-21 09:42
 **/
public interface FileUploadService {

    /**
     * 上传图存储并返回图片路径
     * @param file
     * @return
     */
    String imageUpload(MultipartFile file);
}
