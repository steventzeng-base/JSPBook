package tw.com.javaworld.CH10;

import java.util.Enumeration;
import java.util.Vector;

public class UserList {
    // UserList 算是一個容器整個應用程式內只有一個使用者列表類別
    private static UserList instance = new UserList();
    private Vector container;

    // 以private的方式呼叫建構子，避免被外界產生新instance
    private UserList() {
        container = new Vector();
    }

    // 供外界使用的instance
    public static UserList getInstance() {
        return instance;
    }

    // 新增使用者到使用者列表內
    public void addUser(String user) {
        if (user != null) {
            container.addElement(user);
        }
    }

    // 列出所有線上使用者
    public Enumeration getList() {
        return container.elements();
    }

    // 移除已離線之使用者
    public void removeUser(String user) {
        if (user != null) {
            container.removeElement(user);
        }
    }
}
