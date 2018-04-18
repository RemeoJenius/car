package com.jenius.recommend.car.service.impl;

import com.hankcs.hanlp.classification.classifiers.IClassifier;
import com.hankcs.hanlp.classification.classifiers.NaiveBayesClassifier;
import com.hankcs.hanlp.classification.models.NaiveBayesModel;
import com.hankcs.hanlp.corpus.io.IOUtil;
import org.junit.Test;
import org.springframework.util.ClassUtils;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import static org.junit.Assert.*;

/**
 * Jenius
 * Created in 2018/4/10 下午10:08
 */
public class HanLPServiceImplTest {

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
        // 创建分类器，更高级的功能请参考IClassifier的接口定义
        IClassifier classifier = null;
        try {
            classifier = new NaiveBayesClassifier(trainOrLoadModel());
        } catch (IOException e) {
            e.printStackTrace();
        }
        predict(classifier, "不好重要的事情要说三遍！大WEY的外形符合咱们国人的审美观，身边的人都对这外形称赞。空间真的非常宽阔，前排空间中规中矩，后排空间可以翘二郎腿，后背箱空间只够日常家用，一家4口出行绰绰有余。无匙启动也很满意，从此再也不用掏钥匙开门，打火和关门了。【最不满意的一点】最不满意就是车机系统了，虽然可以支持百度Caylife，但是只支持安卓系统，而苹果手机的ios系统却不支持，要想用Caylife，还得去换一台安卓手机。还有USB插口位置设置也不人性化，在扶手箱里面还得拉条数据线出来接手机，盖子结合处又没有预留线槽，数据线会被压变形。如果像小弟VV5一样设计在空调面板下就可以了。另外扶手箱的盖子设计也不合理，既然是扶手箱，它竟然不能很好的托住手臂，往前拉又挡住。。。");
        predict(classifier, "结果大失所望，灯光昏暗，空间极其狭小，床垫质量恶劣，房间还伴着一股霉味。");
        predict(classifier, "可利用文本分类实现情感分析，效果还行");
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