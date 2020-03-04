package com.house.security;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/*
 * spring-mvc.xml中配置这个拦截器
 * 
 * 注意：本实例参考：http://blog.csdn.net/a568078283/article/details/51333615
 * Spring MVC，阻止直接访问jsp，使用Interceptor登录拦截
 */
public class LoginSecurty implements HandlerInterceptor {//这个类是：防止用户直接输入url进入后台(在提交给handler之前，将请求交给拦截器)
	private List<String> excludedUrls;//采用配置文件的方式进行注入
	/* spring-mvc.xml中配置
	<bean class="club.guettianya.security.LoginSecurty">
               <property name="excludeUrls">
	 */
	
	public void setExcludedUrls(List<String> excludedUrls) {//何处调用？
		this.excludedUrls = excludedUrls;
	}
	
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {//在实际的handler被执行前被调用
	/*
	 ，当它返回为false 时，表示请求结束，后续的Interceptor 和Controller 
	 都不会再执行；当返回值为true 时就会继续调用下一个Interceptor 的preHandle 方法，如果已经是最后一个Interceptor 的时候就会是调用当前请求的Controller 方法。
	 */
	
		String requestUri = request.getRequestURI();//返回值：端口号到?之间  :8080/servlet_life/2
		//List<String> excludedUrls 
		for (String url : excludedUrls) {
			if (requestUri.endsWith(url)) {
				return true;
			}
		}

		// intercept
		HttpSession session = request.getSession();
		if (session.getAttribute("user") == null) {//假若获取不到用户登录时设置的session属性
			// see http://stackoverflow.com/questions/12713873/spring-3-1-how-do-you-send-all-exception-to-one-page
			throw new WebException();
		} else {
			return true;
		}
	}

}
