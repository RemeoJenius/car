package com.jenius.recommend.car.util;

import java.util.Random;

/**
 * Jenius
 * Created in 2018/3/18 下午9:35
 */
public class KeyUtil {

    public static synchronized String genUniqueKey() {
        Random random = new Random();
        Integer number = random.nextInt(9000) + 1000;

        return String.valueOf(number);
    }

    private KeyUtil() {}
}
