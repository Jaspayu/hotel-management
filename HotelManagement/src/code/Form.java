package code;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Form
 */
@WebServlet("/Form")
public class Form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Form() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String  n1=request.getParameter("n1");
		String  e1=request.getParameter("e1");
		String  a1=request.getParameter("a1");
		String  c1=request.getParameter("c1");
		String  p1=request.getParameter("p1");
		String  cin=request.getParameter("cin");
		String  cout=request.getParameter("cout");
		HttpSession ss=request.getSession(false);
		String id=(String) ss.getAttribute("uid");
		System.out.println(id);
		 Connection cnt=Database.getDefaultConnection();
		 try {
			Statement stt=cnt.createStatement();
			String qq="insert into bookings ( uid, name, email, address, contact, person, checkin, checkout) values('"+id+"','"+n1+"','"+e1+"','"+a1+"','"+c1+"','"+p1+"','"+cin+"','"+cout+"')";
			int i=stt.executeUpdate(qq);
			if(i==1){

				response.sendRedirect("MyBookings.jsp");				
			}
			else
			{
				response.sendRedirect("Form.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
