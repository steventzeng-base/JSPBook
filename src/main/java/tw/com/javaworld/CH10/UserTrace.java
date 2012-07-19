package tw.com.javaworld.CH10;

import java.util.*;
import javax.servlet.http.*;
import tw.com.javaworld.CH10.UserList;

public class UserTrace implements javax.servlet.http.HttpSessionBindingListener {
	
	private String user_name;
	private UserList container = UserList.getInstance();
	
	public String getUserName() {
		return user_name;
	}
	
	public void setUserName(String name) {
		user_name = name;
	}

	// 當UserTrace被加入session物件時會呼叫此方法   
	public void valueBound(HttpSessionBindingEvent event) {
	}

	// 當UserTrace被移出session物件時會呼叫此方法   
	public void valueUnbound(HttpSessionBindingEvent event) {
		container.removeUser(user_name);
	}
}
