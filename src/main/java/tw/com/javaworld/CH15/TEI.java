package tw.com.javaworld.CH15;

import javax.servlet.jsp.tagext.TagData;
import javax.servlet.jsp.tagext.TagExtraInfo;
import javax.servlet.jsp.tagext.VariableInfo;

public class TEI extends TagExtraInfo {

    public TEI() {
    }

    public VariableInfo[] getVariableInfo(TagData data) {

        VariableInfo info = new VariableInfo("Message", "String", true, VariableInfo.AT_END);
        VariableInfo[] Var = {info};
        return Var;
    }
}
