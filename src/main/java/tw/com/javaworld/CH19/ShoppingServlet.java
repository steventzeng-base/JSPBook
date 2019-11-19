package tw.com.javaworld.CH19;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Vector;

public class ShoppingServlet extends HttpServlet {
    public void init(ServletConfig conf) throws ServletException {
        super.init(conf);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        HttpSession session = req.getSession(false);

        // 若session為naull時，程式將導向 Error.html
        if (session == null) {
            res.sendRedirect("Error.html");
        }
        Vector buylist = (Vector) session.getAttribute("shoppingcart");
        String action = req.getParameter("action");

        if (!action.equals("CHECKOUT")) {

            //  刪除購物車中的書籍
            if (action.equals("DELETE")) {
                String del = req.getParameter("del");
                int d = (new Integer(del)).intValue();
                buylist.removeElementAt(d);
            }
            // 新增書籍至購物車中
            else if (action.equals("ADD")) {
                boolean match = false;

                // 取得後來新增的書籍
                Book abook = getBook(req);

                //新增第一本書籍至購物車時
                if (buylist == null) {
                    buylist = new Vector();
                    buylist.addElement(abook);
                } else {
                    for (int i = 0; i < buylist.size(); i++) {
                        Book book = (Book) buylist.elementAt(i);

                        // 假若新增的書籍和購物車的書籍一樣時
                        if (book.getName().equals(abook.getName())) {
                            book.setQuantity(
                                    book.getQuantity() + abook.getQuantity());
                            buylist.setElementAt(book, i);
                            match = true;
                        } //end of if name matches
                    } // end of for

                    // 假若新增的書籍和購物車的書籍不一樣時
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

        // 結帳，計算購物車書籍價錢總數
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

        String name = req.getParameter("name");
        String quantity = req.getParameter("quantity");
        String author = req.getParameter("author");
        String publisher = req.getParameter("publisher");
        String price = req.getParameter("price");

        Book bk = new Book();

        bk.setName(name);
        bk.setAuthor(author);
        bk.setPublisher(publisher);
        bk.setPrice((new Float(price)).floatValue());
        bk.setQuantity((new Integer(quantity)).intValue());
        return bk;
    }
}
