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
import javax.swing.JOptionPane;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String subject=request.getParameter("sub");
		String msg=request.getParameter("message");
		
		Connection cnt=Database.getDefaultConnection();
		try {
			Statement stt=cnt.createStatement();
			String qq="insert into contact( Name, email, subject, message) values('"+name+"','"+email+"','"+subject+"','"+msg+"')";
			int i=stt.executeUpdate(qq);
			if(i==1){
				
				response.sendRedirect("login.jsp");
			}
			else{
				JOptionPane.showMessageDialog(null, "Re enter your feedback");
				response.sendRedirect("Contact.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
