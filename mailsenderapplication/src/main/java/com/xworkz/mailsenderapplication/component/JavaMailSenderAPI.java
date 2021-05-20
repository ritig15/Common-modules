package com.xworkz.mailsenderapplication.component;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service("mailSender")
public class JavaMailSenderAPI {
	@Autowired
	private MailSender mailSender; /// MailSender interface defines a strategy for sending simple mails

	public void readyToSendEmail(String toAddress, String fromAddress, String subject, String msgBody) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setFrom(fromAddress);
		mailMessage.setTo(toAddress);
		mailMessage.setSubject(subject);
		mailMessage.setText(msgBody);
		mailSender.send(mailMessage);
	}
}
