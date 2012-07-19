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

	// ��UserTrace�Q�[�Jsession����ɷ|�I�s����k   
	public void valueBound(HttpSessionBindingEvent event) {
	}

	// ��UserTrace�Q���Xsession����ɷ|�I�s����k   
	public void valueUnbound(HttpSessionBindingEvent event) {
		container.removeUser(user_name);
	}
}
