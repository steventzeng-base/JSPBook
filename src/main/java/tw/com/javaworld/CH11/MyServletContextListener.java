package tw.com.javaworld.CH11;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyServletContextListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent event) {
		String Init = (String)event.getServletContext().getInitParameter("Init");
		System.out.println("Init¡G" + Init);
		
		event.getServletContext().log("Tomcat is running ...");
	}

	public void contextDestroyed(ServletContextEvent event) {
		
		event.getServletContext().log("Tomcat is Shutdown ...");		
	}

}
