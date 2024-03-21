<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송</title>
</head>
<body>


	<table>
		<caption><strong style="font-size : 28px">GET/POST 비교</strong></caption>
		<tbody>
			<tr>
				<th>GET</th><th>POST</th>
			</tr>
			
			<td>
				<p>보안이 취약합니다. </p>
				<p>전송할 수 있는 데이터는 최대 255 Byte입니다. </p>
				<p>?name=value의 형식으로 주소창에 전달됩니다. </p>
				<p>POST 방식에 비해 처리속도는 빠른편입니다. </p>
				<p>서블릿에서는 doGet()을 이용합니다. </p>
				<p>주로 a태그를 활용한다.  </p>
			</td>
			
			<td>
				<p>get 방식에 비해 보안이 더 유리합니다. </p>
				<p>전송할 수 있는 데이터의 양은 거의 무한합니다.  </p>
				<p>get에 비해 처리속도가 느립니다. </p>
				<p>서블릿에서는 doPost()를 이용합니다.  </p>
				<p>주로 form 태그를 활용합니다. </p>
				
			</td>
		</tbody>
	</table>

<hr>
	<h3>GET방식 예</h3>
	<div>
		<a href="get.jsp?name=권&age=25">GET 전송</a>
	</div>
<hr>
	<h3>POST방식 예</h3>
	<dir>
		<form action="post.jsp" method ="post">
			<table>
				<caption>설문조사</caption>
				<tbody>
					<tr>
						<th><label for = "id">아이디</label></th>
						<td><input type = "text" name="id" id="id" required>아이디</td>
					</tr>
					
					<tr>
						<th><label for = "birth">출생년도</label></th>
						<td><input type = "number" name="birth" id="birth" max="1980" min="2024" required>출생년도</td>
					</tr>
					
					<tr>
						<th><label >좋아하는 동물</label></th>
						<td>
							<input type = "checkbox" name="pet" id="pet1" value="dog"  >
							<label for = "pet1">강아지</label><br>
							<input type = "checkbox" name="pet" id="pet2" value="cat"  >
							<label for = "pet2">고양이</label><br>
							<input type = "checkbox" name="pet" id="pet3" value="cow" >
							<label for = "pet3">어쩌고</label><br>
							<input type = "checkbox" name="pet" id="pet4" value="horse" >
							<label for = "pet4">저쩌고</label><br>
						</td>
					</tr>
					
					<tr>
						
						<td>
							
						</td>
					</tr>
					
				</tbody>
			</table>
	</dir>
</body>
</html>