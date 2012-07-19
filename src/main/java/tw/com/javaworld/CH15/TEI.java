package tw.com.javaworld.CH15;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class TEI extends TagExtraInfo {

	public TEI() {
	}

	public VariableInfo[] getVariableInfo(TagData data) {

		VariableInfo info = new VariableInfo("Message", "String", true, VariableInfo.AT_END);
		VariableInfo[] Var = { info };
		return Var;
	}
}