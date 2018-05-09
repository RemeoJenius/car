package com.jenius.recommend.car.service.impl;
/**
 * Jenius
 * Created in 2018/4/10 下午10:05
 */

import com.hankcs.hanlp.classification.classifiers.IClassifier;
import com.hankcs.hanlp.classification.classifiers.NaiveBayesClassifier;
import com.hankcs.hanlp.classification.models.NaiveBayesModel;
import com.hankcs.hanlp.corpus.io.IOUtil;
import com.jenius.recommend.car.service.HanLPService;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * @program: car
 *
 * @description:
 *
 * @author: jenius
 *
 * @create: 2018-04-10 22:05
 **/
@Service
public class HanLPServiceImpl implements HanLPService {

    public static final String CORPUS_FOLDER = "/Users/liyongjun/Downloads/ChnSentiCorp情感分析酒店评论";
    public static String MODEL_PATH;

    private static final String EMOTION_POSITIVE = "正面";

    private static final String EMOTION_NEGATIVE = "负面";

    static {
        try {
            MODEL_PATH = ResourceUtils.getURL("").getPath()+"/src/main/resources/model/emotion-model.ser";
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
    @Override
    public Integer emotionAnalysis(String content) {
        // 创建分类器，更高级的功能请参考IClassifier的接口定义
        IClassifier classifier = null;
        try {
            classifier = new NaiveBayesClassifier(trainOrLoadModel());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return predict(classifier, content);

    }
    private static Integer predict(IClassifier classifier, String text) {
        if (EMOTION_POSITIVE.equals(classifier.classify(text))) {
            return 1;
        }
        if (EMOTION_NEGATIVE.equals(classifier.classify(text))) {
            return 2;
        }
        return 0;
    }
    private static NaiveBayesModel trainOrLoadModel() throws IOException {
        NaiveBayesModel model = (NaiveBayesModel) IOUtil.readObjectFrom(MODEL_PATH);
        if (model != null) {
            return model;
        }

        File corpusFolder = new File(CORPUS_FOLDER);
        if (!corpusFolder.exists() || !corpusFolder.isDirectory()) {
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
