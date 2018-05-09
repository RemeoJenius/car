package com.jenius.recommend.car.service.impl;/**
 * Jenius
 * Created in 2018/4/21 上午11:21
 */

import com.jenius.recommend.car.enums.ResultEnum;
import com.jenius.recommend.car.exception.CarException;
import com.jenius.recommend.car.service.FileUploadService;
import com.jenius.recommend.car.util.ResultVOUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.ClassUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * @program: car
 *
 * @description:
 *
 * @author: jenius
 *
 * @create: 2018-04-21 11:21
 **/
@Service
@Slf4j
public class FileUploadServiceImpl implements FileUploadService {


    private String resourceLocation = ClassUtils.getDefaultClassLoader().getResource("").getPath()+"/static/upload/";

    @Override
    public String imageUpload(MultipartFile file) {
        if (file.isEmpty()) {
            throw new CarException(ResultEnum.FILE_NOT_EMPTY);
        }
        // 获取文件名
        String fileName = file.getOriginalFilename();
        log.info("上传的文件名为：" + fileName);
        // 获取文件的后缀名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));
        log.info("上传的后缀名为：" + suffixName);
        // 文件上传后的路径
        String filePath = resourceLocation;
        // 解决中文问题，liunx下中文路径，图片显示问题
        fileName = UUID.randomUUID() + suffixName;
        File dest = new File(filePath + fileName);
        // 检测是否存在目录
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }
        try {
            file.transferTo(dest);
            log.info("【文件实际路径】={}",dest.getPath());
            return "/car"+dest.getPath().split("static")[1];
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
     throw new CarException(ResultEnum.FILE_UPLOAD_FAILED);
    }
}
