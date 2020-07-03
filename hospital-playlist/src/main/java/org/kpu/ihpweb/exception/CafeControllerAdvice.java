package org.kpu.ihpweb.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@Component
@ControllerAdvice
public class CafeControllerAdvice {

	private static final Logger logger = LoggerFactory.getLogger(CafeControllerAdvice.class);

	@ExceptionHandler(Exception.class)
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	public String handleException(Exception e) {
		e.printStackTrace();
		logger.info("error page complete");
		return "exception/error";
	}

	@ExceptionHandler(DataNotFoundException.class)
	public String handleException(DataNotFoundException e) {
		e.printStackTrace();
		logger.info("not_found page complete");
		return "exception/not_found";
	}

}
