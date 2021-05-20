package com.xworkz.mailsenderapplication.tester;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.xworkz.mailsenderapplication.component.JavaMailSenderAPI;

public class JavaMailSenderAPITester {

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
		JavaMailSenderAPI javaMailSenderAPI = (JavaMailSenderAPI) context.getBean("mailSender");
		String fromaddr = "griti.i.961@gmail.com";
		String toaddr = "vinayk.015@gmail.com";
		String subject = "Test automated email from Riti's java code";
		String msgBody = "This is Test automated email here from Riti's java code \n Thanks and Regards, \n Riti G";
		javaMailSenderAPI.readyToSendEmail(toaddr, fromaddr, subject, msgBody);

	}

}
