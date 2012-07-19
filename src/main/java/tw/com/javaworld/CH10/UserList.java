package tw.com.javaworld.CH10;

import java.util.*;

public class UserList {
	private Vector container;

	// UserList ��O�@�Ӯe��������ε{�����u���@�ӨϥΪ̦C�����O  
	private static UserList instance = new UserList();

	// �Hprivate���覡�I�s�غc�l�A�קK�Q�~�ɲ��ͷsinstance  
	private UserList() {
		container = new Vector();
	}

	// �ѥ~�ɨϥΪ�instance  
	public static UserList getInstance() {
		return instance;
	}

	// �s�W�ϥΪ̨�ϥΪ̦C��  
	public void addUser(String user) {
		if (user != null) {
			container.addElement(user);
		}
	}

	// �C�X�Ҧ��u�W�ϥΪ�  
	public Enumeration getList() {
		return container.elements();
	}

	// �����w���u���ϥΪ�  
	public void removeUser(String user) {
		if (user != null) {
			container.removeElement(user);
		}
	}
}