package org.kpu.ihpweb.aop;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogAdvice {

	private static final Logger logger = LoggerFactory.getLogger(LogAdvice.class);

	@Around("execution(* org.kpu.ihpweb.controller..*Controller.*(..))"
			+ " or execution(* org.kpu.ihpweb.service..*Impl.*(..))"
			+ " or execution(* org.kpu.ihpweb.persistence..*Impl.*(..))")
	public Object logPrint(ProceedingJoinPoint joinPoint) throws Throwable {
		long start = System.currentTimeMillis();
		Object result = joinPoint.proceed();
		String type = joinPoint.getSignature().getDeclaringTypeName();
		String name = "";
		if (type.indexOf("Controller") > -1) {
			name = "Controller: ";
		} else if (type.indexOf("Service") > -1) {
			name = "ServiceImpl: ";
		} else if (type.indexOf("DAO") > -1) {
			name = "DAO: ";
		}

		logger.info(
				"___________________________Logging Advice___________________________________________________________________________________________");
		logger.info("Method : " + name + type + "." + joinPoint.getSignature().getName() + "()");
		logger.info("Parametor: " + Arrays.toString(joinPoint.getArgs()));
		logger.info("Execution Type : " + joinPoint.getKind());
		logger.info("target : " + joinPoint.getTarget().toString());
		logger.info(("Method(Parametor) : " + joinPoint.getSignature().toString()));

		long end = System.currentTimeMillis();
		long time = end - start;
		logger.info("Time : " + time);
		logger.info(
				"____________________________________________________________________________________________________________________________________");
		return result;

	}

}
