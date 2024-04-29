package cn.sachin.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/submitform")
public class register extends HttpServlet {

		private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req,HttpServletResponse resp ) throws ServletException,IOException{
		// getting the values from index.jsp page
		PrintWriter out = resp.getWriter();
		String myid =req.getParameter("id");
		String myname =req.getParameter("name1");
		String myemail=req.getParameter("email1");
		String mypass=req.getParameter("pass1");
		String mygender=req.getParameter("Gender");
		String mycity =req.getParameter("city1");
		// making connection to the database
		final String url = "jdbc:mysql://127.0.0.1:3306/ecommerce_cart";
		final String username="root";
		final String password = "Hardest@321";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			
			PreparedStatement ps = con.prepareStatement("Insert Into users values(?,?,?,?)");
			ps.setString(1, myid);
			ps.setString(2, myname);
			ps.setString(3, myemail);
			ps.setString(4, mypass);
			int count =ps.executeUpdate();
			
			if(count>0) {
				resp.setContentType("text/html");
				out.print("<h3 style='color:Green'>User registered Successfully.</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
			}else {
				resp.setContentType("text/html");
				out.print("<h3 style='color:red'>User not registered Due to Some Unforeseen Error.</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/registration.jsp");
				rd.include(req, resp);
			}
		}catch(Exception e) {
			e.printStackTrace();
			resp.setContentType("text/html");
			out.print("<h3 style='color:red'> Exception Occured "+e.getMessage()+"</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/registration.jsp");
			rd.include(req, resp);
		}
		
	}
	}


