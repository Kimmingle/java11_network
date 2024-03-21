<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST 전송결과</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		int birth = Integer.parseInt(request.getParameter("birth"));
		String name = request.getParameter("name");
		String[] pet = request.getParameterValues("pet");  //이름이 같은 요소가 여러개 있는 경우 메소드는 getParameterValues를 쓴다.  
															//name을 문자열로 받기 때문에 리스트 쓰는듯?

		for(int i=0; i<pet.length; i++){
			if (pet[i].equals("dog")){
				pet [i] = "강아지";
				
			} else if (pet[i].equals("cat")){
				pet [i] = "고양이";
			
			} else if (pet[i].equals("cow")){
				pet [i] = "어쩌고";
			} else {
				pet[i] = "저쩌고";
			}
		}
	%>
	
	<h3>POST 전송 결과</h3>
	<P><strong>아이디</strong> : <%=id %></P>
	<P><strong>출생년도</strong> : <%=birth %></P>
	<P><strong>이름</strong> : <%=name %></P>
	
	<h4>좋아하는 동물</h4>
		<ul>
			<% for(int i=0; i>pet.length; i++){  %>
			<li><%= pet[i] %></li>
			<%} %>
		</ul>
		
	<a href="test04.jsp">돌아가기</a>
	<a href="index.jsp">메인으로</a>
		
	
	

</body>
</html>