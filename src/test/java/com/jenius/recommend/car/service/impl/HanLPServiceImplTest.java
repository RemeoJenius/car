package com.jenius.recommend.car.service.impl;

import com.hankcs.hanlp.classification.classifiers.IClassifier;
import com.hankcs.hanlp.classification.classifiers.NaiveBayesClassifier;
import com.hankcs.hanlp.classification.models.NaiveBayesModel;
import com.hankcs.hanlp.corpus.io.IOUtil;
import com.jenius.recommend.car.dataobject.CarComment;
import com.jenius.recommend.car.service.CarCommentService;
import com.jenius.recommend.car.service.HanLPService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.ClassUtils;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Jenius
 * Created in 2018/4/10 下午10:08
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class HanLPServiceImplTest {


    @Autowired
    private HanLPService hanLPService;

    @Autowired
    private CarCommentService carCommentService;

    /**
     * 中文情感挖掘语料-ChnSentiCorp 谭松波
     */
    public static final String CORPUS_FOLDER = "/Users/liyongjun/Downloads/ChnSentiCorp情感分析酒店评论";
    public static String MODEL_PATH;

    static {
        try {
            MODEL_PATH = ResourceUtils.getURL("").getPath()+"/src/main/resources/model/emotion-model.ser";
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void emotionAnalysis() {
        List<CarComment> carCommentList = carCommentService.listCarComment();
        for (CarComment carComment : carCommentList) {
            Integer type = hanLPService.emotionAnalysis(carComment.getCarComment());
            carComment.setType(type);
            carCommentService.save(carComment);
            log.info("【carComment】={}",carComment);
        }

    }
    private static void predict(IClassifier classifier, String text)
    {
        System.out.printf("《%s》 情感极性是 【%s】\n", text, classifier.classify(text));
    }
    private static NaiveBayesModel trainOrLoadModel() throws IOException
    {
        NaiveBayesModel model = (NaiveBayesModel) IOUtil.readObjectFrom(MODEL_PATH);
        if (model != null) return model;

        File corpusFolder = new File(CORPUS_FOLDER);
        if (!corpusFolder.exists() || !corpusFolder.isDirectory())
        {
            System.err.println("没有文本分类语料，请阅读IClassifier.train(java.lang.String)中定义的语料格式与语料下载：" +
                    "https://github.com/hankcs/HanLP/wiki/%E6%96%87%E6%9C%AC%E5%88%86%E7%B1%BB%E4%B8%8E%E6%83%85%E6%84%9F%E5%88%86%E6%9E%90");
            System.exit(1);
        }
        // 创建分类器，更高级的功能请参考IClassifier的接口定义
        IClassifier classifier = new NaiveBayesClassifier();
        // 训练后的模型支持持久化，下次就不必训练了
        classifier.train(CORPUS_FOLDER);
        model = (NaiveBayesModel) classifier.getModel();
        IOUtil.saveObjectTo(model, MODEL_PATH);
        System.out.println("【path】" + MODEL_PATH);
        return model;
    }

}