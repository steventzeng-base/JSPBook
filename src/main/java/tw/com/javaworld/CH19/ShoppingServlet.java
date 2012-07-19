package tw.com.javaworld.CH19;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ShoppingServlet extends HttpServlet {
	public void init(ServletConfig conf) throws ServletException {
		super.init(conf);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		HttpSession session = req.getSession(false);

		// �Ysession��naull�ɡA�{���N�ɦV Error.html
		if (session == null) {
			res.sendRedirect("Error.html");
		}
		Vector buylist = (Vector) session.getAttribute("shoppingcart");
		String action = req.getParameter("action");

		if (!action.equals("CHECKOUT")) {

			//  �R���ʪ����������y
			if (action.equals("DELETE")) {
				String del = req.getParameter("del");
				int d = (new Integer(del)).intValue();
				buylist.removeElementAt(d);
			}
			// �s�W���y���ʪ�����
			else if (action.equals("ADD")) {
				boolean match = false;

				// ���o��ӷs�W�����y
				Book abook = getBook(req);

				//�s�W�Ĥ@�����y���ʪ�����
				if (buylist == null) {
					buylist = new Vector();
					buylist.addElement(abook);
				} else {
					for (int i = 0; i < buylist.size(); i++) {
						Book book = (Book) buylist.elementAt(i);

						// ���Y�s�W�����y�M�ʪ��������y�@�ˮ�
						if (book.getName().equals(abook.getName())) {
							book.setQuantity(
								book.getQuantity() + abook.getQuantity());
							buylist.setElementAt(book, i);
							match = true;
						} //end of if name matches
					} // end of for

					// ���Y�s�W�����y�M�ʪ��������y���@�ˮ�
					if (!match)
						buylist.addElement(abook);
				}
			}

			session.setAttribute("shoppingcart", buylist);
			String url = "/CH19/EShop.jsp";
			ServletContext sc = getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher(url);
			rd.forward(req, res);
		}

		// ���b�A�p���ʪ������y�����`��
		else if (action.equals("CHECKOUT")) {
			float total = 0;
			for (int i = 0; i < buylist.size(); i++) {
				Book order = (Book) buylist.elementAt(i);
				float price = order.getPrice();
				int quantity = order.getQuantity();
				total += (price * quantity);
			}

			String amount = new Float(total).toString();
			req.setAttribute("amount", amount);
			String url = "/CH19/Checkout.jsp";
			ServletContext sc = getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher(url);
			rd.forward(req, res);
		}
	}

	private Book getBook(HttpServletRequest req) {
		
		String name = encoding(req.getParameter("name"));
		String quantity = encoding(req.getParameter("quantity"));
		String author = encoding(req.getParameter("author"));
		String publisher = encoding(req.getParameter("publisher"));
		String price = encoding(req.getParameter("price"));
		
		Book bk = new Book();

		bk.setName(name);
		bk.setAuthor(author);
		bk.setPublisher(publisher);
		bk.setPrice((new Float(price)).floatValue());
		bk.setQuantity((new Integer(quantity)).intValue());
		return bk;
	}
	
	private String encoding(String str) {
	
		try {
			str = new String(str.getBytes("ISO-8859-1"), "MS950");
		} catch (UnsupportedEncodingException uee) {
			System.out.println("UnsupportedEncodingException�G" + uee.getMessage());
		}
		
		return str;
	}
}
