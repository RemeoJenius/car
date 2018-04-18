package com.jenius.recommend.car.service;

import javax.mail.MessagingException;

/**
 * Jenius
 * Created in 2018/3/18 下午8:16
 */
public interface MailService {
    void sendSimpleMail(String to, String subject, String content) throws MessagingException;
}
