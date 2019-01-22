package com.kh.admin.model.service;


import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.kh.absence.model.dao.AbsenceDao;
import com.kh.admin.model.dao.AdminDao;
import com.kh.book.model.vo.Book;
import com.kh.member.model.vo.Member;

public class AdminService {
	
	public List<Member> selectMember(int cPage,int numPerPage){
		Connection conn =getConnection();
		List<Member> list=new AdminDao().selectMember(conn,cPage,numPerPage);
		close(conn);
		return list;
		
	}
	public List<Book> selectBook(){
		Connection conn=getConnection();
		List<Book> list=new AdminDao().selectBook(conn);
		close(conn);
		return list;
		
	}
	public int selectCount() {
		Connection conn =getConnection();
		int result=new AdminDao().selectCount(conn);
		close(conn);
		return result;
	}
	
	

}