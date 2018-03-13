package code;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Updatepwd
 */
@WebServlet("/Updatepwd")
public class Updatepwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatepwd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String old=request.getParameter("old");
	String new1 =request.getParameter("new");
	String cnfm=request.getParameter("cnfm");
	HttpSession ss=request.getSession(false);
	String id=(String) ss.getAttribute("uid");
	Connection cnt =Database.getDefaultConnection();
	try {
		Statement stt=cnt.createStatement();
		String qq="update userdetail set password='"+new1+"' where password='"+old+"'and id='"+id+"'";
		int i=stt.executeUpdate(qq);
		if(i==1)
		{
			response.sendRedirect("Welcome.jsp");
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	}

}
