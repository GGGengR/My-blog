package com.blog.blog;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loading
 */
@WebServlet("/loading")
public class loading extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loading() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/blog?serverTimezone=GMT%2B8";
			String username="root";
			String password="0000";
			Connection conn=DriverManager.getConnection(url,username,password);
			Statement stmt=conn.createStatement();
			String sql="select * from blog";
			ResultSet rs=stmt.executeQuery(sql);
			List<Blog> list=new ArrayList<Blog>();
			while(rs.next()) {
				Blog blog=new Blog();
				blog.setText(rs.getString("text"));
				blog.setBlog(rs.getString("blog"));
				blog.setDetail(rs.getString("detail"));
				blog.setImage(rs.getString("image"));
				list.add(blog);
			}
			Statement stmt1=conn.createStatement();
			String sql1="select * from message";
			ResultSet rs1=stmt1.executeQuery(sql1);
			List<Message> list1=new ArrayList<Message>();
			while(rs1.next()) {
				Message mess=new Message();
				mess.setName(rs1.getString("name"));
				mess.setText(rs1.getString("text"));
				mess.setMessage(rs1.getString("message"));
				list1.add(mess);
			}
			String use="游客";
			request.setAttribute("use", use);
			request.setAttribute("list", list);
			request.setAttribute("list1", list1);
			rs.close();
			rs1.close();
			stmt.close();
			stmt1.close();
			conn.close();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			}catch(SQLException e){
			e.printStackTrace();
			}
		request.getRequestDispatcher("blog_list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
