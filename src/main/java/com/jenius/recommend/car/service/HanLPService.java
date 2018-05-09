package com.jenius.recommend.car.service;/**
 * Jenius
 * Created in 2018/4/10 下午10:04
 */

/**
 * @program: car
 *
 * @description: 基于HanLP进行情感分析
 *
 * @author: jenius
 *
 * @create: 2018-04-10 22:04
 **/
public interface HanLPService {

    /**
     * 根据评论内容判断评论是正面还是负面
     */
    Integer emotionAnalysis(String content);

}
