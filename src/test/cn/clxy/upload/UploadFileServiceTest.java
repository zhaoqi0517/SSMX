/**
 * Copyright (C) 2013 CLXY Studio.
 * This content is released under the (Link Goes Here) MIT License.
 * http://en.wikipedia.org/wiki/MIT_License
 */
package cn.clxy.upload;

import com.sf.ssm.upload.UploadFileService;

public class UploadFileServiceTest {

	public static void main(String[] args) {

		UploadFileService service = null;
		try {

			service = new UploadFileService("/home/qi/Documents/mba.zip");
			service.upload();

//			service = new UploadFileService("/home/qi/Pictures/Selection_009.png");
//			service.retry(1, 2);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
