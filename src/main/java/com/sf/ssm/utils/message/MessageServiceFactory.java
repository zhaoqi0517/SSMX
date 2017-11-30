package com.sf.ssm.utils.message;

public class MessageServiceFactory {
	
	public static MessageService getMobileMessageService(){
		return new MessageServiceSupport(){
			public String getType() {
				return PHONO_MESSAGE_TYPE;
			}
		};
	}
	
}
