<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/noticeHeader.jsp"%>

	
	<%@ page import="java.util.*,com.kh.notice.model.vo.Notice" %>
	
	<%
		List<Notice> list=(List)request.getAttribute("list");

%>

<link
	href="https://fonts.googleapis.com/css?family=Black+And+White+Picture"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>

.col-sm-9 a{
	text-decoration:none;
	color: black;
	cursor: pointer;
}

.col-sm-9 table{
cellspacing:0;
 cellpadding:0;
 border:0px;
 }

table th{
 border-bottom:1px solid skyblue;
margin: 5px 0;
padding: 8px 10px;
border-width: 2px;
border-height: 10px;
 text-align:center;
 }
 
 .col-sm-9 td{
 text-align:center;
 }




</style>

			<div class="col-sm-1"></div>
			<div class="col-sm-9">
				
				<h2>공지사항</h2>
				<br/>
				<table class="table table-striped">
					<colgroup>
						<col width="86px" />
						<col width="*" />
						<col width="126px" />
					</colgroup>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>날짜</th>
					</tr>
					
				
					<%for(Notice n : list){ %>
					<% if(n.getStatus().equals("Y")){ %>
					<tr>
						<td><%=n.getNoticeNo() %></td>
						<td><a href="<%=request.getContextPath() %>/notice/noticeContent?no=<%=n.getNoticeNo()%>"><%=n.getNoticeTitle()%></a></td>
						<td><%=n.getNoticeDate()%></td>					
					</tr> 
					<%} 
					}%>					
				</table>

			</div>

<%@include file="/views/common/footer.jsp"%>