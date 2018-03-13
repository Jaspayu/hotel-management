package code;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("n1");
		String eml=request.getParameter("e1");
		String pwd=request.getParameter("p1");
		String cnfmp=request.getParameter("p2");
		if(pwd==cnfmp){
		Connection cnt=Database.getDefaultConnection();
		try {
			Statement stt=cnt.createStatement();
			String qq="insert into userdetail(username,password,email) values('"+un+"','"+pwd+"','"+eml+"')";
			int i=stt.executeUpdate(qq);
			if(i==1){
				JOptionPane.showMessageDialog(null, "added succesfully");
				response.sendRedirect("login.jsp");
			}
			else{
				JOptionPane.showMessageDialog(null, "Reenter details");
				response.sendRedirect("Registraion.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		}
	}

}
