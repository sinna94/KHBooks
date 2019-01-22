<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
<%String isbn = (String)request.getAttribute("isbn"); %>
<section class='container'>
<h4>도서 정보 입력 </h4>
	<form action="">
		<table class="table">
			<tr>
				<th>책 제목</th>
				<td> <input type="text" name="title" id="title" class="form-control"/> </td>
				<th>저자 명</th>
				<td> <input type="text" name="author" id="author" class="form-control"/> </td>
			</tr>
			<tr>
				<th>출판사</th>
				<td><input type="text" name="pub" id="pub" class="form-control"/></td>
				<th>가격</th>
				<td><input type="number" name="price" id="price" class="form-control"/></td>
			</tr>
			<tr>
				<th>장르</th>
				<td><select name="genre" id="genre">
					<%for(String g: genres){%>
						<option value="<%=g%>"><%=g%></option>
					<%} %>
				</select></td>
				<th>ISBN</th>
				<td><input type="number" name="" id="" value="<%=isbn%>"class="form-control" readonly/></td>
			</tr>
			<tr>
				<th>책 표지</th>
				<td><input type="file" name="" id="" class="form-control"/></td>
				<th>페이지 수</th>
				<td><input type="number" name="page" id="page" class="form-control"/></td>
			</tr>
			<tr>
				<th>책 소개</th>
				<td colspan="3"><textarea name="info" id="info" cols="80" rows="7" class="form-control"></textarea></td>
			</tr>
			<tr>
				<th>줄거리</th>
				<td colspan="3"><textarea name="content" id="content" cols="80" rows="7" class="form-control"></textarea></td>
			</tr>
			<tr>
				<th>목차</th>
				<td colspan="3"><textarea name="index" id="index" cols="80" rows="7" class="form-control"></textarea></td>
			</tr>
			<tr>
				<th>역자</th>
				<td><input type="text" name="" id="" class="form-control"/></td>
				<th>번역가</th>
				<td><input type="text" name="" id="" class="form-control"/></td>
			</tr>
			<tr>
				<th>수량</th>
				<td><input type="number" name="count" id="" class="form-control"/></td>
				<th>출간일</th>
				<td> <input type="date" name="date" id="" /> </td>
			</tr>
			<tr>
				<td><input type="reset" class="form-control btn btn-danger"/></td>
				<td><input type="submit" value="완료" class="form-control btn btn-primary" /></td>
			</tr>
		</table>
	</form>
</section>
<script>
	$(function(){
		$.ajax({
   			url: "https://dapi.kakao.com/v3/search/book",
   			headers: {'Authorization': 'KakaoAK {인증번호}'},
   			type : "get",
   			data:{
   				query: '<%=isbn%>',
    			target:'isbn'
   			},
   			success : function(result){
   				var data = result.documents[0];
   				$("#title").val(data.title);
   				$('#author').val(data.authors);
   				$('#pub').val(data.publisher);
   				$('#price').val(data.price);
   				$('#info').val(data.contents+"...");
   				console.log(data.authors[0]);
   			}
   		});
	})

</script>
<%@include file="/views/common/footer.jsp"%>