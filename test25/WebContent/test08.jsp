<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전달 및 스코프 결과 페이지</title>
</head>
<body>
<h2>데이터 전달 및 스코프 결과 페이지</h2>
<%
//받을때도 리스트로 받아야함
	List<String> lst = new ArrayList<>();
	Set<String> set = new HashSet<String>();
	Map<Integer, String> map = new HashMap<Integer, String>();
	
	lst = (ArrayList<String>)request.getAttribute("lst");   //Attribute로 주고받을때는 형변환 해서 써야함 \!
	set = (HashSet<String>)request.getAttribute("set");
	map = (HashMap<Integer, String>)request.getAttribute("map");
	
	out.println("<h2>List 접근</h2>");
	out.println("<ul>");
	for(int i=0; i<lst.size(); i++){   //향상된 for문으로도 만들어도 됨
		out.println("<li>"+lst.get(i)+"</li>");
	}
	out.println("</ul><hr>");
	
	out.println("<h2>Set 접근</h2>");
	out.println("<ul>");
	for(String s : set){   
		out.println("<li>"+s+"</li>");
	}
	out.println("</ul><hr>");
	
	out.println("<h2>Map 접근</h2>");
	out.println("<ul>");
	Collection<String> val = map.values();
	for(String s : val){   
		out.println("<li>"+s+"</li>");
	}
	out.println("</ul><hr>");

%>
<h2>데이터 전달 밒 스코프 결과 페이지</h2>
<%
	pageContext.setAttribute("pageData","페이지");
	request.setAttribute("reqData", "요청데이터");
	session.setAttribute("sesData", "세션데이터");
	application.setAttribute("appData", "애플리케이션 데이터");
	
	out.println("page : "+pageContext.getAttributesScope("pageData"));
	out.println("request : "+pageContext.getAttributesScope("reqData"));
	out.println("session : "+pageContext.getAttributesScope("sesData"));
	out.println("application : "+pageContext.getAttributesScope("appData"));
%>

<div>
	<a href = "test09.jsp?msg =테스트 해보기" >test09로 가기</a>

</div>
</body>
</html>