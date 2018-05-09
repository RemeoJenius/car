package com.jenius.recommend.car.utils;

import com.jenius.recommend.car.util.ParseMD5Util;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.ClassUtils;

import java.util.UUID;

/**
 * Jenius
 * Created in 2018/3/17 下午4:14
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class ParseMD5UtilTest {

    @Test
    public void parseStrToMd5L32() {
        log.info(ParseMD5Util.parseStrToMd5L32("jenius"));

    }
    @Test
    public void test() {

        log.info("【path】{}",ClassUtils.getDefaultClassLoader().getResource("").getPath());

        System.out.println(UUID.randomUUID().getMostSignificantBits());
        System.out.println(UUID.randomUUID().getMostSignificantBits());
    }


}