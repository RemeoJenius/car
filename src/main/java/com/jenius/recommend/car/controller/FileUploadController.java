package com.jenius.recommend.car.controller;/**
 * Jenius
 * Created in 2018/4/16 下午8:43
 */


import com.jenius.recommend.car.enums.ResultEnum;
import com.jenius.recommend.car.util.ResultVOUtil;
import com.jenius.recommend.car.vo.ResultVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.MultipartConfigElement;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * @program: car
 *
 * @description: 图片上传并显示
 *
 * @author: jenius
 *
 * @create: 2018-04-16 20:43
 **/
@Controller
@Slf4j
@RequestMapping("/upload")
public class FileUploadController {

    @Value("${custom.resourceLocation}")
    private String resourceLocation;

    @Value("${custom.tmpLocation}")
    private String tmpLocation;

    @RequestMapping(value = "/imgUpdate", produces = "application/json; charset=utf-8" ,method = RequestMethod.POST)
    @ResponseBody
    public ResultVO imgUpdate(@RequestParam(value = "file") MultipartFile file) {
        if (file.isEmpty()) {
            return ResultVOUtil.error(ResultEnum.FILE_NOT_EMPTY.getCode(),ResultEnum.FILE_NOT_EMPTY.getMassage());
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
            log.info("【fileName】{}",dest.getName());
            file.transferTo(dest);
            return ResultVOUtil.success(null);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return ResultVOUtil.error(ResultEnum.FILE_UPLOAD_FAILED.getCode(),ResultEnum.FILE_UPLOAD_FAILED.getMassage());

    }

    @Bean
    MultipartConfigElement multipartConfigElement() {
        MultipartConfigFactory factory = new MultipartConfigFactory();
        factory.setLocation(tmpLocation);
        return factory.createMultipartConfig();
    }

    @GetMapping("/update")
    public ModelAndView update() { return new ModelAndView("user/upload");}

}