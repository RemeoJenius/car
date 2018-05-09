package com.jenius.recommend.car.service.impl;

import com.jenius.recommend.car.service.MailService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.mail.MessagingException;

import static org.junit.Assert.*;

/**
 * Jenius
 * Created in 2018/3/18 下午8:20
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class MailServiceImplTest {

    @Autowired
    private MailService MailService;
    @Test
    public void sendSimpleMail() throws MessagingException {
        MailService.sendSimpleMail("remeojenius@163.com","test simple mail"," hello this is simple mail");
    }

    @Test
    public void split() {
        String str = "/Volumes/ziyan/IntellijIDEAproject/car/target/classes/static/upload/20180508/400365ff-2f1b-4290-84fb-530cc190378b.jpg";
        for (String s : str.split("static")) {
            System.out.println(s);
        }

    }

}