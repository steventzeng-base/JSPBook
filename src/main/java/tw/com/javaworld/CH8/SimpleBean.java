package tw.com.javaworld.CH8;

import java.io.*;

public class SimpleBean{

  public SimpleBean() {
  }
  
  private String name;
  private String number;

  public void setName(String name) {
    this.name = name;
  }
  
  public void setNumber(String number) {
    this.number = number;
  }

  public String getName() {
    return name;
  }
  
  public String getNumber() {
    return number;
  }
}