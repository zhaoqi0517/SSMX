package com.sf.ssm.utils;

public class EmailServiceFactory {

	public static EmailService getEmailService(){
		return new EmailServiceImpl();
	}
}
