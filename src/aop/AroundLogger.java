package aop;

import java.util.Arrays;
import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;

/**
 * 环绕增强
 * @author wuyongjie
 */
@Aspect
public class AroundLogger {
	private static final Logger logger = Logger.getLogger(AroundLogger.class);

	@Around("execution(* service.UserService.*(..))")
	public Object aroundLogger(ProceedingJoinPoint jp) throws Throwable {
		logger.info("调用" + jp.getTarget() + "类的" + jp.getSignature().getName()
				+ "方法，方法参数为：" + Arrays.toString(jp.getArgs()));
		try {
			Object result = jp.proceed();// 执行方法并获取返回值
			logger.info("调用" + jp.getTarget() + "类的"
					+ jp.getSignature().getName() + "方法，返回值为：" + result);
			return result;
		} catch (Exception e) {
			logger.error("调用" + jp.getTarget() + "类的"
					+ jp.getSignature().getName() + "方法发生异常！！！！！" + e);
			throw e;
		} finally {
			logger.info("执行" + jp.getSignature().getName() + "方法结束》》》》》》》》》》》》");
		}
	}
}
