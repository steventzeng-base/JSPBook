package tw.com.javaworld.CH17;

import java.io.*;
import java.util.*;
import javax.xml.parsers.*;
import org.xml.sax.*;
import org.xml.sax.helpers.*;

public class MyHandler extends DefaultHandler {

	private StringBuffer textBuffer;
	private HashMap hm_TagData;
	private String tagName;
	
	public MyHandler(HashMap hm_TagData) {
		this.hm_TagData = hm_TagData;
	} 
	
	//��SAX�J��xml�r���ɡA�|�۰ʩI�s����k
	public void characters(char[] ch, int start, int len) {
		String s = new String(ch, start, len);
		if (textBuffer == null) {
			textBuffer = new StringBuffer(s);
		} else {
			textBuffer.append(s);
		}
	}
	public void startElement(String namespaceURI, String localName, String qName, Attributes atts) {

		// �P�_���ƪ��ݩʦW��         
		int count = 1;
		echoText();
		if (atts != null) {
			for (int i = 0; i < atts.getLength(); i++) {
				// �ݩʦW�� 
				String aName = atts.getLocalName(i);
				if ("".equals(aName))
					aName = atts.getQName(i);
				String temp = aName;
				while (hm_TagData.get(temp) != null) {
					temp = aName + count;
					count++;
				}
				hm_TagData.put(temp, atts.getValue(i));
			}
		}
	}
	public void endElement(String namespaceURI, String localName, String qName) {
		String eName = localName;
		// ���ҦW��       	
		if ("".equals(eName))
			eName = qName;
		// ��namespaceAware��false��       	       	
		int count = 1;
		String temp = eName;
		while (hm_TagData.get(temp) != null) {
			temp = eName + count;
			count++;
		}
		hm_TagData.put(temp, textBuffer);
		echoText();

	}
	private void echoText() {
		if (textBuffer == null)
			return;
		String s = "" + textBuffer;
		textBuffer = null;
	}

}
