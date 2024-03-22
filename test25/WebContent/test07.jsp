<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹의 전달과 스코프 알기</title>

</head>
<body>
<h2>웹의 객체 전달고 스코프(scope) 알기</h2>
<%
	ArrayList<String> lst = new ArrayList<String>();
	lst.add("이정희");
	lst.add("이원석");
	lst.add("이예린");
	lst.add("이연정");
	lst.add("이성하");
	request.setAttribute("lst", lst);
	
	Set<String> set = new HashSet<String>();
	set.add("조대신");
	set.add("조우진");
	set.add("최태영");
	set.add("한태역");
	request.setAttribute("set", set);
	
	Map<Integer, String> map = new HashMap<>();
	map.put(1, "김동연");
	map.put(2, "김민식");
	map.put(3, "김민아");
	map.put(4, "김윤정");
	map.put(5, "김응원");
	map.put(6, "김필규");
	request.setAttribute("map", map);
	
	
	//정보를 저장하고있다가 test08에서도 해당 정보를 계속 볼 수 있게 해줌
	RequestDispatcher rd = request.getRequestDispatcher("test08.jsp");  //requwst. set. map에 담아서 보낸것
	rd.forward(request, response);
	response.sendRedirect("test08.jsp");  //데이터 이동(url에는 test07로 뜨지만 내용은 test08로 나옴)
	//지정한 페이지로 이동
	
	//*sendRedirect메서드로 정보를 전달하면 서버가 응답(response)하고 지정된 경로로 이동한다. 즉 요청과 응답이 이루어졌기 때문에 통신을 끝낸다.
	//*foward는 response하지않고 다른 리소스로 전달할 수 있다. 
	//*즉 forward는 다른 리소스로 패스하고, sendRedirect는 response 객체와 함께 응답하며 통신을 끝내는 것이다.

%>

</body>
</html>