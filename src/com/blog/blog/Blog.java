package com.blog.blog;
import java.sql.Connection.*;
/*
 * Book类页面
 */
import java.sql.Statement.*;
import java.sql.DriverManager.*;
import java.sql.PreparedStatement.*;
public class Blog {
	private String text;
	private String blog;
	private String image;
	private String detail;
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text=text;
	}
	public String getBlog() {
		return blog;
	}
	public void setBlog(String blog) {
		this.blog=blog;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail=detail;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image=image;
	}
}
