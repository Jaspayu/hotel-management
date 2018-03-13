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

/**
 * Servlet implementation class BookedRom
 */
@WebServlet("/BookedRom")
public class BookedRom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookedRom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String [] myroom=request.getParameterValues("room");	
			for (int i = 0; i < myroom.length; i++) {
			    System.out.println(myroom[i]);
			
			
			    Connection cnt=Database.getDefaultConnection();
				try {
					Statement stt=cnt.createStatement();
					String qq="update roomstatus set status='booked' where roomno='"+myroom[i]+"'";
					int j=stt.executeUpdate(qq);
					if(j==1)
					{
						System.out.println("succesful");
						
					}
					else
					{
						System.out.println("error");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			response.sendRedirect("Form.jsp");	
		}
		
	

}
