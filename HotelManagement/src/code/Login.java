package code;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String id=request.getParameter("n1");
	String pwd=request.getParameter("p1");

	
	Connection cnt=Database.getDefaultConnection();
	try {
		Statement stt=cnt.createStatement();
		String qq="select * from userdetail where id='"+id+"' and password='"+pwd+"'";
		ResultSet rr=stt.executeQuery(qq);
		if(rr.next()){
			HttpSession ss=request.getSession(true);
			ss.setAttribute("un",rr.getString("username"));
			ss.setAttribute("uid", id);
			response.sendRedirect("Welcome.jsp");
		}
		else{
			response.sendRedirect("login.jsp");
		}
	} catch (Exception e) {
		// TODO: handle exception
	}
	
	}

}
